package com.estrongs.android.c;

import android.annotation.SuppressLint;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.provider.MediaStore;
import com.baidu.sapi2.ErrorCode;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.q;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import com.estrongs.android.util.ak;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import jcifs.smb.SmbFile;
import jcifs.smb.SmbRandomAccessFile;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class a extends g {
    private static a e = null;
    private static Object f = new Object();
    private String c;
    private String d;

    public a(String str, int i) {
        super(i);
        this.c = "ESHttpServer";
        this.d = null;
        this.d = str;
    }

    public static int a() {
        int i;
        synchronized (f) {
            i = e != null ? e.f267a : 0;
        }
        return i;
    }

    private j a(String str, long j, long j2) {
        InputStream a2;
        long j3;
        int E = ak.E(str);
        if (E == 1) {
            try {
                SmbFile smbFile = new SmbFile(com.estrongs.fs.impl.o.b.a(str));
                if (!smbFile.exists()) {
                    return new j(this, "404 Not Found", "text/plain", "Not Found");
                }
                SmbRandomAccessFile smbRandomAccessFile = new SmbRandomAccessFile(smbFile, "r");
                if (j != 0) {
                    smbRandomAccessFile.seek(j);
                }
                com.estrongs.fs.impl.o.c cVar = new com.estrongs.fs.impl.o.c(smbRandomAccessFile, j2);
                j jVar = j == 0 ? new j(this, "200 OK", "application/octet-stream", cVar) : new j(this, "206 Partial Content", "application/octet-stream", cVar);
                long length = smbFile.length();
                if (j2 == 0) {
                    j2 = length - j;
                }
                jVar.a("Content-Length", "" + j2);
                jVar.a("Content-Range", "bytes " + j + "-" + ((j + j2) - 1) + "/" + length);
                jVar.a("Accept-Ranges", "bytes");
                return jVar;
            } catch (Exception e2) {
                e2.printStackTrace();
                return new j(this, "500 Internal Server Error", "text/plain", e2.toString());
            }
        }
        if (E == 2 || E == 5 || E == 21 || E == 22 || E == 19) {
            try {
                if (E == 21 || E == 22) {
                    long b2 = com.estrongs.fs.impl.q.b.b(str);
                    a2 = com.estrongs.fs.impl.q.b.a(str, j);
                    j3 = b2;
                } else {
                    com.estrongs.old.fs.a n = com.estrongs.fs.d.n(ak.bi(str));
                    long e3 = n.e(str);
                    a2 = n.a(str, j);
                    j3 = e3;
                }
                j jVar2 = j == 0 ? new j(this, "200 OK", "application/octet-stream", a2) : new j(this, "206 Partial Content", "application/octet-stream", a2);
                if (j2 == 0) {
                    j2 = j3 - j;
                }
                jVar2.a("Content-Length", "" + j2);
                jVar2.a("Content-Range", "bytes " + j + "-" + ((j + j2) - 1) + "/" + j3);
                jVar2.a("Accept-Ranges", "bytes");
                return jVar2;
            } catch (Exception e4) {
                e4.printStackTrace();
                return new j(this, "500 Internal Server Error", "text/plain", e4.toString());
            }
        }
        if (E == 4 || E == 23) {
            try {
                long h = com.estrongs.fs.impl.i.b.h(str);
                InputStream c = com.estrongs.fs.impl.i.b.c(str, j);
                j jVar3 = j == 0 ? new j(this, "200 OK", "application/octet-stream", c) : new j(this, "206 Partial Content", "application/octet-stream", c);
                if (j2 == 0) {
                    j2 = h - j;
                }
                jVar3.a("Content-Length", "" + j2);
                jVar3.a("Content-Range", "bytes " + j + "-" + ((j + j2) - 1) + "/" + h);
                jVar3.a("Accept-Ranges", "bytes");
                return jVar3;
            } catch (Exception e5) {
                e5.printStackTrace();
                return new j(this, "500 Internal Server Error", "text/plain", e5.toString());
            }
        }
        if (E != 3) {
            return new j(this, "400 Bad Request", "text/plain", "Not Supported");
        }
        try {
            long d = com.estrongs.fs.d.a().d(str);
            InputStream e6 = com.estrongs.fs.d.a().e(str);
            j jVar4 = j == 0 ? new j(this, "200 OK", "application/octet-stream", e6) : new j(this, "206 Partial Content", "application/octet-stream", e6);
            if (j2 == 0) {
                j2 = d - j;
            }
            jVar4.a("Content-Length", "" + j2);
            jVar4.a("Content-Range", "bytes " + j + "-" + ((j + j2) - 1) + "/" + d);
            jVar4.a("Accept-Ranges", "bytes");
            return jVar4;
        } catch (Exception e7) {
            e7.printStackTrace();
            return new j(this, "500 Internal Server Error", "text/plain", e7.toString());
        }
    }

    public static InputStream a(String str) {
        if (str != null && !str.trim().equals("")) {
            try {
                return new ByteArrayInputStream(str.getBytes("utf-8"));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    private String a(int i) {
        return FexApplication.a().getText(i).toString();
    }

    private String a(long j) {
        long a2 = com.estrongs.fs.c.d.a(j);
        String str = a(C0000R.string.property_bytes).toString();
        if (a2 == 0) {
            a2 = 1;
        }
        return com.estrongs.fs.c.d.a(j, a2) + " " + (a2 >= 1073741824 ? "GB" : a2 >= 1048576 ? "MB" : a2 >= 1024 ? "KB" : str) + " (" + com.estrongs.fs.c.d.d(j) + " " + str + ")";
    }

    public static boolean b() {
        boolean z = true;
        synchronized (f) {
            if (e != null && e.c()) {
                return true;
            }
            if (e != null) {
                try {
                    e.i();
                } catch (Exception e2) {
                }
                e = null;
            }
            loop0: for (int i = 0; i < 5; i++) {
                try {
                    e = new a("/sdcard", 59777 + i);
                    int i2 = LoginCallBack.REQUEST_LOGINPROTECT;
                    while (true) {
                        if (i2 <= 0) {
                            z = false;
                            break loop0;
                        }
                        if (e.c()) {
                            break loop0;
                        }
                        Thread.sleep(200L);
                        i2 += ErrorCode.Network_Failed;
                    }
                    return z;
                } catch (Exception e3) {
                    e = null;
                    e3.printStackTrace();
                }
            }
            return false;
        }
    }

    @Override // com.estrongs.android.c.g
    public j a(String str, String str2, Properties properties, Properties properties2, Properties properties3) {
        long j;
        if (str.startsWith("/estrongs_filemgr_oauth_result")) {
            CreateOAuthNetDisk b2 = CreateOAuthNetDisk.b();
            if (b2 != null) {
                b2.a(properties2);
            }
            return null;
        }
        if (str2.equals("POST")) {
            String str3 = new String(h());
            if (str3.equals("listFiles")) {
                return b(str);
            }
            if (str3.equals("listPics")) {
                return d();
            }
            if (str3.equals("listVideos")) {
                return e();
            }
            if (str3.equals("listVideos")) {
                return f();
            }
            if (str3.equals("listAPPs")) {
                return g();
            }
        }
        String be = ak.be(str);
        if (be == null || ak.E(be) == 0) {
            return super.a(str, str2, properties, properties2, properties3);
        }
        String property = properties.getProperty("range");
        if (property == null || !property.startsWith("bytes=")) {
            j = 0;
        } else {
            String substring = property.substring("bytes=".length());
            int indexOf = substring.indexOf(45);
            if (indexOf > 0) {
                substring = substring.substring(0, indexOf);
            }
            try {
                j = Long.parseLong(substring);
            } catch (NumberFormatException e2) {
                j = 0;
            }
        }
        return a(be, j, 0L);
    }

    public j b(String str) {
        if (ak.E(str) != 0) {
            return new j(this, "400 Bad Request", "text/plain", "Not Supported");
        }
        try {
            File[] listFiles = new File(str).listFiles();
            DateFormat I = q.a(FexApplication.a()).I();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(" hh:mm:ss a");
            String str2 = "[\r\n";
            int i = 0;
            while (i < listFiles.length) {
                String str3 = ((((str2 + "{") + "\"name\":\"" + listFiles[i].getName() + "\", ") + "\"time\":\"" + I.format(new Date(listFiles[i].lastModified())) + simpleDateFormat.format(new Date(listFiles[i].lastModified())) + "\", ") + "\"type\":\"" + (listFiles[i].isDirectory() ? "folder" : "file") + "\", ") + "\"size\":\"" + a(listFiles[i].length()) + "\", ";
                str2 = i == listFiles.length + (-1) ? str3 + "}\r\n" : str3 + "}, \r\n";
                i++;
            }
            String str4 = str2 + "]";
            j jVar = new j(this, "200 OK", "text/plain", a(str4));
            jVar.a("Content-Length", "" + str4.getBytes("utf-8").length);
            return jVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return new j(this, "500 Internal Server Error", "text/plain", e2.toString());
        }
    }

    public boolean c() {
        return this.f268b.isAlive();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0184  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public j d() {
        Cursor cursor;
        Exception exc;
        Cursor cursor2;
        j jVar;
        try {
            cursor = FexApplication.a().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, null, null, "bucket_display_name");
        } catch (Exception e2) {
            exc = e2;
            cursor2 = null;
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        try {
            String str = "[\r\n";
            DateFormat I = q.a(FileExplorerActivity.E()).I();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(" hh:mm:ss a");
            while (cursor != null && cursor.moveToNext()) {
                File file = new File(cursor.getString(cursor.getColumnIndexOrThrow("_data")));
                str = (((((str + "{") + "\"name\":\"" + file.getName() + "\", ") + "\"time\":\"" + I.format(new Date(file.lastModified())) + simpleDateFormat.format(new Date(file.lastModified())) + "\", ") + "\"location\":\"" + file.getAbsolutePath() + "\", ") + "\"size\":\"" + a(file.length()) + "\", ") + "},\r\n";
            }
            String str2 = str + "]";
            jVar = new j(this, "200 OK", "text/plain", a(str2));
            jVar.a("Content-Length", "" + str2.getBytes("utf-8").length);
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e3) {
            cursor2 = cursor;
            exc = e3;
            try {
                exc.printStackTrace();
                jVar = new j(this, "500 Internal Server Error", "text/plain", exc.toString());
                if (cursor2 != null) {
                    cursor2.close();
                }
                return jVar;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursor2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
            }
            throw th;
        }
        return jVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x01ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public j e() {
        Cursor cursor;
        Exception exc;
        Cursor cursor2;
        j jVar;
        try {
            cursor = FexApplication.a().getContentResolver().query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, null, null, null, "title");
        } catch (Exception e2) {
            exc = e2;
            cursor2 = null;
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        try {
            String str = "[\r\n";
            DateFormat I = q.a(FileExplorerActivity.E()).I();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(" hh:mm:ss a");
            while (cursor != null && cursor.moveToNext()) {
                File file = new File(cursor.getString(cursor.getColumnIndexOrThrow("_data")));
                str = ((((((str + "{") + "\"name\":\"" + file.getName() + "\", ") + "\"time\":\"" + I.format(new Date(file.lastModified())) + simpleDateFormat.format(new Date(file.lastModified())) + "\", ") + "\"location\":\"" + file.getAbsolutePath() + "\", ") + "\"duration\":" + cursor.getString(cursor.getColumnIndexOrThrow("duration")) + ", ") + "\"size\":\"" + a(file.length()) + "\", ") + "},\r\n";
            }
            String str2 = str + "]";
            jVar = new j(this, "200 OK", "text/plain", a(str2));
            jVar.a("Content-Length", "" + str2.getBytes("utf-8").length);
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e3) {
            cursor2 = cursor;
            exc = e3;
            try {
                exc.printStackTrace();
                jVar = new j(this, "500 Internal Server Error", "text/plain", exc.toString());
                if (cursor2 != null) {
                    cursor2.close();
                }
                return jVar;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursor2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
            }
            throw th;
        }
        return jVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x01ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public j f() {
        Cursor cursor;
        Exception exc;
        Cursor cursor2;
        j jVar;
        try {
            cursor = FexApplication.a().getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, null, null, null, "title_key");
        } catch (Exception e2) {
            exc = e2;
            cursor2 = null;
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        try {
            String str = "[\r\n";
            DateFormat I = q.a(FileExplorerActivity.E()).I();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(" hh:mm:ss a");
            while (cursor != null && cursor.moveToNext()) {
                File file = new File(cursor.getString(cursor.getColumnIndexOrThrow("_data")));
                str = ((((((str + "{") + "\"name\":\"" + file.getName() + "\", ") + "\"time\":\"" + I.format(new Date(file.lastModified())) + simpleDateFormat.format(new Date(file.lastModified())) + "\", ") + "\"location\":\"" + file.getAbsolutePath() + "\", ") + "\"duration\":" + cursor.getString(cursor.getColumnIndexOrThrow("duration")) + ", ") + "\"size\":\"" + a(file.length()) + "\", ") + "},\r\n";
            }
            String str2 = str + "]";
            jVar = new j(this, "200 OK", "text/plain", a(str2));
            jVar.a("Content-Length", "" + str2.getBytes("utf-8").length);
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e3) {
            cursor2 = cursor;
            exc = e3;
            try {
                exc.printStackTrace();
                jVar = new j(this, "500 Internal Server Error", "text/plain", exc.toString());
                if (cursor2 != null) {
                    cursor2.close();
                }
                return jVar;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursor2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
            }
            throw th;
        }
        return jVar;
    }

    public j g() {
        try {
            List<PackageInfo> installedPackages = FexApplication.a().getPackageManager().getInstalledPackages(0);
            q.a(FileExplorerActivity.E()).I();
            new SimpleDateFormat(" hh:mm:ss a");
            String str = "[\r\n";
            for (PackageInfo packageInfo : installedPackages) {
                str = ((((((str + "{") + "\"name\":\"" + packageInfo.packageName + "\", ") + "\"version\":\"" + packageInfo.versionName + "\", ") + "\"location\":\"" + packageInfo.applicationInfo.sourceDir + "\", ") + "\"size\":\"0\", ") + "\"status\":\"" + packageInfo.applicationInfo.backupAgentName + "\", ") + "},\r\n";
            }
            String str2 = str + "]";
            j jVar = new j(this, "200 OK", "text/plain", a(str2));
            jVar.a("Content-Length", "" + str2.getBytes("utf-8").length);
            return jVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return new j(this, "500 Internal Server Error", "text/plain", e2.toString());
        }
    }
}
