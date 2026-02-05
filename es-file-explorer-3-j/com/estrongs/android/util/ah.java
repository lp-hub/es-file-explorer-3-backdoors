package com.estrongs.android.util;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.webkit.MimeTypeMap;
import com.estrongs.android.pop.netfs.NetFileInfo;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ah {

    /* renamed from: a, reason: collision with root package name */
    private static final Uri f2666a = Uri.parse("content://media/external/audio/albumart");

    /* renamed from: b, reason: collision with root package name */
    private static final BitmapFactory.Options f2667b = new BitmapFactory.Options();

    public static Bitmap a(Context context, long j, long j2) {
        Bitmap b2;
        InputStream inputStream = null;
        if (j2 < 0) {
            if (j < 0 || (b2 = b(context, j, -1L)) == null) {
                return null;
            }
            return b2;
        }
        ContentResolver contentResolver = context.getContentResolver();
        Uri withAppendedId = ContentUris.withAppendedId(f2666a, j2);
        try {
            if (withAppendedId == null) {
                return null;
            }
            try {
                inputStream = contentResolver.openInputStream(withAppendedId);
                f2667b.inPreferredConfig = Bitmap.Config.RGB_565;
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, f2667b);
                if (inputStream == null) {
                    return decodeStream;
                }
                try {
                    inputStream.close();
                    return decodeStream;
                } catch (IOException e) {
                    return decodeStream;
                }
            } catch (FileNotFoundException e2) {
                Bitmap b3 = b(context, j, j2);
                if (b3 != null && b3.getConfig() == null) {
                    b3 = b3.copy(Bitmap.Config.RGB_565, false);
                }
                if (inputStream == null) {
                    return b3;
                }
                try {
                    inputStream.close();
                    return b3;
                } catch (IOException e3) {
                    return b3;
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                }
            }
            throw th;
        }
    }

    public static Uri a(ContentResolver contentResolver, TypedMap typedMap) {
        String string = typedMap.getString("_data");
        int i = typedMap.getInt("android.intent.extra.ringtone.TYPE");
        long j = typedMap.getLong("_size");
        String d = ak.d(string);
        int lastIndexOf = d.lastIndexOf(".");
        if (lastIndexOf != -1) {
            d = d.substring(0, lastIndexOf);
        }
        if (string.startsWith("/sdcard/")) {
            string = ak.bo(string);
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(com.estrongs.fs.c.d.b(string));
        if (mimeTypeFromExtension == null) {
            mimeTypeFromExtension = "audio/*";
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", string);
        contentValues.put("title", d);
        contentValues.put("_size", Long.valueOf(j));
        contentValues.put(NetFileInfo.MIME_TYPE, mimeTypeFromExtension);
        contentValues.put("is_ringtone", Boolean.valueOf(i == 1));
        contentValues.put("is_notification", Boolean.valueOf(i == 2));
        contentValues.put("is_alarm", Boolean.valueOf(i == 4));
        contentValues.put("is_music", (Boolean) true);
        try {
            return contentResolver.insert(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, contentValues);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Uri a(ContentResolver contentResolver, String str, int i) {
        Cursor cursor;
        Uri parse;
        if (str.startsWith("/sdcard/")) {
            str = ak.bo(str);
        }
        String str2 = i == 1 ? "is_ringtone" : i == 2 ? "is_notification" : "is_alarm";
        String uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.toString();
        try {
            cursor = contentResolver.query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", str2}, "_data=?", new String[]{str}, null);
            if (cursor != null) {
                try {
                    if (cursor.getCount() != 0) {
                        cursor.moveToFirst();
                        int i2 = cursor.getInt(0);
                        if (cursor.getInt(1) == 0 && i != 0) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(str2, (Boolean) true);
                            try {
                                contentResolver.update(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, contentValues, "_id=" + i2, null);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        parse = Uri.parse(uri + "/" + i2);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return parse;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            File file = new File(str);
            TypedMap typedMap = new TypedMap();
            typedMap.put("_data", str);
            typedMap.put("android.intent.extra.ringtone.TYPE", Integer.valueOf(i));
            typedMap.put("_size", Long.valueOf(file.length()));
            parse = a(contentResolver, typedMap);
            if (cursor != null) {
                cursor.close();
            }
            return parse;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    private static Bitmap b(Context context, long j, long j2) {
        Bitmap bitmap = null;
        if (j2 < 0 && j < 0) {
            throw new IllegalArgumentException("Must specify an album or a song id");
        }
        try {
            if (j2 < 0) {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(Uri.parse("content://media/external/audio/media/" + j + "/albumart"), "r");
                if (openFileDescriptor != null) {
                    bitmap = BitmapFactory.decodeFileDescriptor(openFileDescriptor.getFileDescriptor());
                }
            } else {
                ParcelFileDescriptor openFileDescriptor2 = context.getContentResolver().openFileDescriptor(ContentUris.withAppendedId(f2666a, j2), "r");
                if (openFileDescriptor2 != null) {
                    bitmap = BitmapFactory.decodeFileDescriptor(openFileDescriptor2.getFileDescriptor());
                }
            }
        } catch (FileNotFoundException e) {
        }
        return bitmap;
    }
}
