package com.baidu.mobstat.a;

import android.text.format.DateFormat;
import android.util.Log;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static DateFormat f132a;

    static {
        f132a = null;
        a();
        f132a = new DateFormat();
    }

    public static int a(String str) {
        return a("stat", str);
    }

    public static int a(String str, String str2) {
        if (!a(3)) {
            return -1;
        }
        b(str, str2);
        return Log.d(str, str2);
    }

    public static int a(String str, Throwable th) {
        if (!a(3)) {
            return -1;
        }
        a("stat", str, th);
        return Log.d("stat", str, th);
    }

    public static int a(Throwable th) {
        return a("", th);
    }

    public static int a(Object... objArr) {
        if (a(3)) {
            return a(d(objArr));
        }
        return -1;
    }

    public static void a() {
        b.a("_b_sdk.log");
    }

    private static void a(String str, String str2, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        b(str, str2 + "\n" + stringWriter.toString());
        printWriter.close();
        try {
            stringWriter.close();
        } catch (IOException e) {
            Log.w("Log.debug", "", e);
        }
    }

    public static boolean a(int i) {
        return a("stat", i);
    }

    public static boolean a(String str, int i) {
        return i >= a.f129a;
    }

    public static int b(String str) {
        if (!a(5)) {
            return -1;
        }
        b("stat", str);
        return Log.w("stat", str);
    }

    public static int b(Object... objArr) {
        if (a(5)) {
            return b(d(objArr));
        }
        return -1;
    }

    private static synchronized void b(String str, String str2) {
        synchronized (c.class) {
        }
    }

    public static int c(String str) {
        if (!a(6)) {
            return -1;
        }
        b("stat", str);
        return Log.e("stat", str);
    }

    public static int c(Object... objArr) {
        if (a(6)) {
            return c(d(objArr));
        }
        return -1;
    }

    private static String d(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            sb.append(obj).append(' ');
        }
        return sb.toString();
    }
}
