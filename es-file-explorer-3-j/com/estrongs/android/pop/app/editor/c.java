package com.estrongs.android.pop.app.editor;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import com.estrongs.android.pop.C0000R;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f744a = c.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static String f745b = "UTF-8";
    private Context c;
    private String d;
    private String e;
    private boolean j;
    private boolean k;
    private String f = null;
    private File g = null;
    private File h = null;
    private File i = null;
    private String l = com.estrongs.android.pop.a.c;

    public c(Activity activity, Uri uri) {
        this.c = null;
        this.d = null;
        this.e = null;
        this.j = false;
        this.k = false;
        this.c = activity;
        this.d = uri.toString();
        if (this.d.startsWith("content://")) {
            this.j = true;
        }
        if (this.j) {
            this.e = a(activity.getContentResolver(), uri);
        } else {
            this.e = com.estrongs.android.util.ak.d(Uri.decode(this.d));
        }
        this.k = com.estrongs.android.util.ak.aP(this.d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.InputStream] */
    private File a(String str) {
        File file;
        ?? r4;
        FileOutputStream fileOutputStream;
        int i = 0;
        if (str == null || !str.startsWith("content://")) {
            return null;
        }
        try {
            if (Environment.getExternalStorageState().equals("mounted")) {
                File file2 = new File(com.estrongs.android.pop.a.c + "/content/");
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                StringBuilder append = new StringBuilder().append(com.estrongs.android.pop.a.c).append("/content/");
                String str2 = this.e;
                file = new File(append.append(str2).toString());
                r4 = str2;
            } else {
                File filesDir = this.c.getFilesDir();
                if (filesDir != null) {
                    File file3 = new File(filesDir.getAbsolutePath() + "/content/");
                    boolean exists = file3.exists();
                    if (!exists) {
                        file3.mkdirs();
                    }
                    file = new File(filesDir.getAbsolutePath() + "/content/" + this.e);
                    r4 = exists;
                } else {
                    file = null;
                }
            }
            if (file == null) {
                return file;
            }
            ?? exists2 = file.exists();
            if (exists2 != 0) {
                file.delete();
            }
            try {
                try {
                    r4 = this.c.getContentResolver().openInputStream(Uri.parse(str));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
                fileOutputStream = null;
                r4 = 0;
            } catch (Throwable th2) {
                th = th2;
                exists2 = 0;
                r4 = 0;
            }
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[4096];
                    while (i != -1) {
                        i = r4.read(bArr);
                        if (i > 0) {
                            fileOutputStream.write(bArr, 0, i);
                        }
                    }
                    if (r4 != 0) {
                        r4.close();
                    }
                    if (fileOutputStream == null) {
                        return file;
                    }
                    fileOutputStream.close();
                    return file;
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    if (r4 != 0) {
                        r4.close();
                    }
                    if (fileOutputStream == null) {
                        return file;
                    }
                    fileOutputStream.close();
                    return file;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                exists2 = 0;
                if (r4 != 0) {
                    r4.close();
                }
                if (exists2 != 0) {
                    exists2.close();
                }
                throw th;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private String a(ContentResolver contentResolver, Uri uri) {
        Cursor cursor;
        Cursor cursor2;
        try {
            cursor = contentResolver.query(uri, new String[]{"_display_name"}, null, null, null);
        } catch (Exception e) {
            cursor2 = null;
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        try {
            cursor.moveToFirst();
            int columnIndex = cursor.getColumnIndex("_display_name");
            if (columnIndex < 0) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            String string = cursor.getString(columnIndex);
            if (cursor == null) {
                return string;
            }
            cursor.close();
            return string;
        } catch (Exception e2) {
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public String a() {
        return this.e;
    }

    public long b() {
        try {
            StatFs statFs = new StatFs((com.estrongs.android.util.ak.aZ(this.g.getAbsolutePath()) ? Environment.getExternalStorageDirectory() : Environment.getRootDirectory()).getAbsolutePath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Exception e) {
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public File c() {
        InputStream inputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        Exception e;
        if (this.k) {
            FileOutputStream fileOutputStream2 = null;
            try {
                inputStream = com.estrongs.fs.d.a(this.c).e(this.d);
                if (inputStream == null) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (0 == 0) {
                        return null;
                    }
                    try {
                        fileOutputStream2.close();
                        return null;
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        return null;
                    }
                }
                try {
                    File file = new File(this.l);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    String str = this.l + "/" + this.e;
                    this.g = new File(str);
                    if (this.g.exists()) {
                        this.g.delete();
                    }
                    long d = com.estrongs.fs.d.a(this.c).d(this.d);
                    if (b() <= d) {
                        Log.e(f744a, "No space to load the file free " + b() + ", file length " + d);
                        throw new IOException(this.c.getString(C0000R.string.no_enough_space));
                    }
                    fileOutputStream = new FileOutputStream(str);
                    try {
                        try {
                            byte[] bArr = new byte[4096];
                            int i = 0;
                            while (i != -1) {
                                i = inputStream.read(bArr);
                                if (i > 0) {
                                    fileOutputStream.write(bArr, 0, i);
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                        } catch (Exception e6) {
                            e = e6;
                            e.printStackTrace();
                            if (this.g != null && this.g.exists()) {
                                this.g.delete();
                            }
                            this.g = null;
                            throw new IOException(e.getMessage());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e8) {
                                e8.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e9) {
                    fileOutputStream = null;
                    e = e9;
                } catch (Throwable th3) {
                    fileOutputStream = null;
                    th = th3;
                    if (inputStream != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    throw th;
                }
            } catch (Exception e10) {
                inputStream = null;
                e = e10;
                fileOutputStream = null;
            } catch (Throwable th4) {
                inputStream = null;
                th = th4;
                fileOutputStream = null;
            }
        } else {
            Uri parse = Uri.parse(this.d);
            if (this.j) {
                this.g = a(this.d);
            } else {
                this.g = new File(parse.getPath());
            }
        }
        return this.g;
    }

    public File d() {
        if (this.g == null) {
            Log.e(f744a, "source file is not created");
            throw new IOException("source file is not created");
        }
        if (this.h == null) {
            if (!a.a(this.g.getAbsolutePath())) {
                this.h = new File(this.g.getParent() + "/" + this.e + ".tmp");
            } else if (Environment.getExternalStorageState().equals("mounted")) {
                File file = new File(com.estrongs.android.pop.a.c);
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.h = new File(com.estrongs.android.pop.a.c + "/" + this.e + ".tmp");
            } else {
                String str = this.g.getParent() + "/" + this.e + ".tmp";
                File filesDir = this.c.getFilesDir();
                if (filesDir != null) {
                    str = filesDir.getAbsolutePath() + "/" + this.e + ".tmp";
                }
                this.h = new File(str);
            }
        }
        return this.h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public void e() {
        OutputStream outputStream = null;
        int i = 0;
        ?? r2 = this.k;
        try {
            if (r2 == 0) {
                return;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(this.g);
                try {
                    OutputStream b2 = com.estrongs.fs.d.a(this.c).b(this.d, (int) this.g.length());
                    byte[] bArr = new byte[4096];
                    while (i != -1) {
                        i = fileInputStream.read(bArr);
                        if (i > 0) {
                            b2.write(bArr, 0, i);
                        }
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (b2 != null) {
                        try {
                            b2.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    throw new IOException();
                }
            } catch (Exception e4) {
                e = e4;
            } catch (Throwable th) {
                th = th;
                r2 = 0;
                if (r2 != 0) {
                    try {
                        r2.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                if (0 != 0) {
                    try {
                        outputStream.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public String f() {
        if (this.g == null) {
            Log.e(f744a, "source file is not created");
            throw new IOException("source file is not created");
        }
        a a2 = a.a(this.c, this.g);
        InputStream e = a2.e();
        String a3 = com.estrongs.android.util.g.a(e);
        e.close();
        a2.d();
        return (a3 == null || !Charset.isSupported(a3)) ? com.estrongs.android.pop.q.a(this.c).m(com.estrongs.android.util.g.a()) : a3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public long g() {
        long j;
        a a2 = a.a(this.c, this.g);
        try {
            try {
                j = a2.c();
            } catch (IOException e) {
                e.printStackTrace();
                j = 0;
                try {
                    a2.d();
                    a2 = a2;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    a2 = e2;
                }
            }
            return j;
        } finally {
            try {
                a2.d();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
    }

    public boolean h() {
        return this.d.contains(new StringBuilder().append("sdcard").append(com.estrongs.android.pop.a.f328b).append("/tmp/").toString());
    }

    public void i() {
        try {
            String str = this.d;
            if (str.startsWith("file:///")) {
                str = Uri.decode(str);
            }
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(com.estrongs.fs.d.a(this.c).j(str));
            new com.estrongs.fs.b.o(com.estrongs.fs.d.a(this.c), (List<com.estrongs.fs.g>) arrayList, false, com.estrongs.android.pop.q.a(this.c).aD()).execute(false);
            a a2 = a.a(this.c, this.g);
            if (a2 != null && a2.g()) {
                a2.b();
            }
            a2.d();
            a a3 = a.a(this.c, this.h);
            if (a3 != null && a3.g()) {
                a3.b();
            }
            a3.d();
            a a4 = a.a(this.c, this.i);
            if (a4 != null && a4.g()) {
                a4.b();
            }
            a4.d();
            if (this.k) {
                return;
            }
            this.c.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse("file://" + Environment.getExternalStorageDirectory())));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean j() {
        return this.j;
    }

    public void k() {
        if (!this.j || this.g == null) {
            return;
        }
        this.g.delete();
    }
}
