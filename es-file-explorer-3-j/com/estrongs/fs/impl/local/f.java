package com.estrongs.fs.impl.local;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import android.provider.MediaStore;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class f {
    public static OutputStream a(String str, boolean z) {
        Uri uri;
        try {
            ContentResolver contentResolver = FexApplication.a().getContentResolver();
            ContentValues contentValues = new ContentValues();
            if (av.b(str)) {
                uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            } else if (av.f(str)) {
                uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            } else if (av.e(str)) {
                uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
            } else {
                Object a2 = com.estrongs.android.util.i.a((Object) null, "android.provider.MediaStore$Files", "getContentUri", new Object[]{"external"});
                if (a2 == null) {
                    return null;
                }
                uri = (Uri) a2;
            }
            contentValues.put("_data", str);
            contentValues.put("title", ak.d(str));
            contentValues.put("_size", (Integer) 0);
            contentValues.put(NetFileInfo.MIME_TYPE, "*/*");
            Uri insert = contentResolver.insert(uri, contentValues);
            if (insert != null) {
                try {
                    OutputStream openOutputStream = z ? contentResolver.openOutputStream(insert, "wa") : contentResolver.openOutputStream(insert);
                    if (openOutputStream != null) {
                        return openOutputStream;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static boolean a(String str) {
        Uri uri = null;
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (b(str)) {
            return true;
        }
        ContentResolver contentResolver = FexApplication.a().getContentResolver();
        Uri uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", str);
        try {
            uri = contentResolver.insert(uri2, contentValues);
        } catch (Exception e2) {
        }
        if (uri == null) {
            return false;
        }
        if (contentResolver.delete(uri, null, null) > 0) {
            return true;
        }
        return false;
    }

    private static boolean b(String str) {
        Uri uri;
        ContentResolver contentResolver = FexApplication.a().getContentResolver();
        Uri uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        Uri uri3 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        try {
            uri = (Uri) com.estrongs.android.util.i.a((Object) null, "android.provider.MediaStore$Files", "getContentUri", new String[]{"external"});
        } catch (Exception e) {
            uri = null;
        }
        try {
            if (contentResolver.delete(uri2, "_data=?", new String[]{str}) > 0) {
                return true;
            }
        } catch (Exception e2) {
        }
        try {
            if (contentResolver.delete(uri3, "_data=?", new String[]{str}) > 0) {
                return true;
            }
        } catch (Exception e3) {
        }
        if (uri != null) {
            try {
                contentResolver.delete(uri, "_data=?", new String[]{str});
            } catch (Exception e4) {
            }
        }
        return false;
    }

    public static boolean b(String str, boolean z) {
        try {
            if (z) {
                String str2 = str.endsWith("/") ? str + str.hashCode() + ".jpg" : str + "/" + str.hashCode() + ".jpg";
                try {
                    ContentResolver contentResolver = FexApplication.a().getContentResolver();
                    Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_data", str2);
                    Uri insert = contentResolver.insert(uri, contentValues);
                    if (insert != null) {
                        try {
                            contentResolver.delete(insert, null, null);
                            return true;
                        } catch (Exception e) {
                            try {
                                e.printStackTrace();
                                return true;
                            } catch (Exception e2) {
                                return true;
                            }
                        }
                    }
                } catch (Exception e3) {
                    return false;
                }
            } else {
                OutputStream a2 = a(str, false);
                if (a2 != null) {
                    try {
                        a2.close();
                        return true;
                    } catch (Exception e4) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e5) {
            return false;
        }
    }
}
