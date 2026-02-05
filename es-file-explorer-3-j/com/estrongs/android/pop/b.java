package com.estrongs.android.pop;

import android.os.Environment;
import java.io.File;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f1094a = true;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f1095b = false;
    private static String c = null;
    private static Object d = new Object();

    private static String a(String str) {
        try {
            return new File(str).getCanonicalPath();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void a() {
        synchronized (d) {
            f1095b = false;
            c = null;
            c();
        }
    }

    public static String b() {
        String absolutePath;
        synchronized (d) {
            c();
            absolutePath = c != null ? c : Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        return absolutePath;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void c() {
        File file;
        File file2 = null;
        int i = 0;
        if (f1095b) {
            return;
        }
        f1095b = true;
        String a2 = a("/sdcard");
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        if (a2 != null && absolutePath != null && a2.equals(absolutePath)) {
            f1094a = true;
            c = a2;
            return;
        }
        if (a2 == null || absolutePath == null || a2.equals(absolutePath)) {
            f1094a = false;
            c = a2;
            return;
        }
        try {
            File file3 = new File("/sdcard/.estrongs");
            if (!file3.exists()) {
                file3.mkdirs();
            }
            long currentTimeMillis = System.currentTimeMillis();
            file = new File("/sdcard/.estrongs/" + currentTimeMillis);
            try {
                file.createNewFile();
                if (new File(absolutePath + "/.estrongs/" + currentTimeMillis).exists()) {
                    f1094a = true;
                    c = absolutePath;
                } else {
                    f1094a = false;
                    c = null;
                    if (a2.equalsIgnoreCase("/storage/emulated/legacy")) {
                        while (true) {
                            if (i >= 3) {
                                break;
                            }
                            if (new File("/storage/emulated/" + i + "/.estrongs/" + currentTimeMillis).exists()) {
                                c = "/storage/emulated/" + i;
                                break;
                            }
                            i++;
                        }
                        if (c == null) {
                            c = a2;
                        }
                    } else {
                        c = a2;
                    }
                }
                if (file != null) {
                    file.delete();
                }
            } catch (Exception e) {
                e = e;
                file2 = file;
                try {
                    e.printStackTrace();
                    f1094a = false;
                    c = a2;
                    if (file2 != null) {
                        file2.delete();
                    }
                } catch (Throwable th) {
                    th = th;
                    file = file2;
                    if (file != null) {
                        file.delete();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (file != null) {
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
        } catch (Throwable th3) {
            th = th3;
            file = null;
        }
    }
}
