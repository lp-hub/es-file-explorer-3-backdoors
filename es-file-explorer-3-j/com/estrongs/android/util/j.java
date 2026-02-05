package com.estrongs.android.util;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.location.Location;
import android.net.Uri;
import android.provider.MediaStore;
import com.estrongs.android.pop.netfs.NetFileInfo;

/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private static j f2700a = new j();

    /* renamed from: b, reason: collision with root package name */
    private static final String[] f2701b = {"image/jpeg", "image/png"};
    private static Uri c = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    private static Uri d = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
    private static String[] e = {"_id", "_data"};
    private static String f = "(mime_type=? or mime_type=?)";

    private j() {
    }

    private int a(String str) {
        if (str == null) {
            return 0;
        }
        return ak.e(str).toLowerCase().hashCode();
    }

    private Uri a(ContentResolver contentResolver, String str, String str2, long j, Location location, int i) {
        Cursor c2 = c(contentResolver, str);
        if (c2 != null && c2.getCount() > 0 && c2.moveToFirst()) {
            Uri withAppendedId = ContentUris.withAppendedId(c, c2.getLong(0));
            c2.close();
            return withAppendedId;
        }
        String d2 = ak.d(str);
        ContentValues contentValues = new ContentValues(9);
        contentValues.put("title", d2);
        contentValues.put("_display_name", d2);
        contentValues.put("description", str2);
        contentValues.put("datetaken", Long.valueOf(j));
        if (str.endsWith(".png")) {
            contentValues.put(NetFileInfo.MIME_TYPE, "image/png");
        } else {
            contentValues.put(NetFileInfo.MIME_TYPE, "image/jpeg");
        }
        contentValues.put("orientation", Integer.valueOf(i));
        contentValues.put("bucket_id", Integer.valueOf(a(str)));
        contentValues.put("bucket_display_name", ak.e(str).toLowerCase());
        if (location != null) {
            contentValues.put("latitude", Double.valueOf(location.getLatitude()));
            contentValues.put("longitude", Double.valueOf(location.getLongitude()));
        }
        contentValues.put("_data", str);
        try {
            return contentResolver.insert(c, contentValues);
        } catch (Exception e2) {
            return null;
        }
    }

    public static j a() {
        return f2700a;
    }

    private Cursor c(ContentResolver contentResolver, String str) {
        try {
            return MediaStore.Images.Media.query(contentResolver, c, new String[]{"_id", "bucket_id"}, "(mime_type=? or mime_type=?) and _data='" + str.replace("'", "''") + "'", f2701b, "_id ASC");
        } catch (Throwable th) {
            return null;
        }
    }

    public Uri a(ContentResolver contentResolver, String str) {
        Cursor c2 = c(contentResolver, str);
        if (c2 == null || !c2.moveToFirst()) {
            return null;
        }
        Uri build = ContentUris.withAppendedId(c, c2.getLong(0)).buildUpon().appendQueryParameter("bucketId", "" + c2.getInt(1)).build();
        c2.close();
        return build;
    }

    public Uri a(ContentResolver contentResolver, String[] strArr, String str) {
        Uri a2;
        if (str == null || strArr == null || strArr.length == 0 || str.contains("/.")) {
            return null;
        }
        int i = 0;
        Uri uri = null;
        while (i < strArr.length) {
            String str2 = strArr[i];
            if (str2.contains("/.")) {
                a2 = uri;
            } else {
                if (str2.endsWith(".png") || str2.endsWith(".jpg") || str2.endsWith(".jpeg")) {
                    Cursor c2 = c(contentResolver, str2);
                    if (c2 != null && c2.getCount() > 0) {
                        c2.close();
                        a2 = uri;
                    } else if (str.equals(str2)) {
                        a2 = a(contentResolver, str2, "", System.currentTimeMillis(), null, 0);
                        if (a2 != null) {
                            a2 = a2.buildUpon().appendQueryParameter("bucketId", String.valueOf(a(str2))).build();
                        }
                    } else {
                        a(contentResolver, str2, "", System.currentTimeMillis(), null, 0);
                    }
                }
                a2 = uri;
            }
            i++;
            uri = a2;
        }
        return uri;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Uri b(ContentResolver contentResolver, String str) {
        Cursor cursor;
        Cursor cursor2;
        Uri parse;
        if (str == null || str.contains("/.")) {
            return null;
        }
        if (str.startsWith("/sdcard/")) {
            str = "/mnt" + str;
        }
        try {
            cursor = contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data='" + str + "'", null, null);
            if (cursor != null) {
                try {
                    if (cursor.getCount() > 0) {
                        cursor.moveToFirst();
                        parse = Uri.parse(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString() + "/" + cursor.getInt(0));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return parse;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor2 = cursor;
                    try {
                        e.printStackTrace();
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursor2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                    }
                    throw th;
                }
            }
            parse = a(contentResolver, str, "", System.currentTimeMillis(), null, 0);
            if (cursor != null) {
                cursor.close();
            }
            return parse;
        } catch (Exception e3) {
            e = e3;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }
}
