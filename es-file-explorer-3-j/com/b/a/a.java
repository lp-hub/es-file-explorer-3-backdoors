package com.b.a;

import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.Vector;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f91a = false;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f92b = false;
    private static boolean c = false;
    private static final String d = a.class.getName();
    private static final Vector e = new Vector();
    private static boolean f = false;
    private static Vector g = new Vector();

    static {
        e.addElement(d);
    }

    private a() {
    }

    private static String a(int i) {
        return i > 9 ? String.valueOf(i) : "0" + String.valueOf(i);
    }

    private static void a(int i, String str, Throwable th) {
        Enumeration elements = g.elements();
        while (elements.hasMoreElements()) {
            ((b) elements.nextElement()).a(i, str, th);
        }
    }

    public static void a(b bVar) {
        g.addElement(bVar);
    }

    public static void a(String str) {
        if (a()) {
            a(str, (String) null, (String) null);
            c();
            a(1, str, (Throwable) null);
        }
    }

    public static void a(String str, long j) {
        if (a()) {
            a(str, " ", Long.toString(j));
            c();
            a(1, str + " " + Long.toString(j), (Throwable) null);
        }
    }

    public static void a(String str, String str2, long j) {
        if (a()) {
            a(str, " " + str2 + " 0x", e.a(j));
            c();
            a(1, str + " " + str2 + " 0x" + e.a(j), (Throwable) null);
        }
    }

    private static void a(String str, String str2, String str3) {
        if (c) {
            try {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(new Date(System.currentTimeMillis()));
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(a(calendar.get(11))).append(":");
                stringBuffer.append(a(calendar.get(12))).append(":");
                stringBuffer.append(a(calendar.get(13))).append(".");
                stringBuffer.append(b(calendar.get(14))).append(" ");
                stringBuffer.append(str);
                if (str2 != null) {
                    stringBuffer.append(str2);
                }
                if (str3 != null) {
                    stringBuffer.append(str3);
                }
                System.out.println(stringBuffer.toString());
            } catch (Throwable th) {
            }
        }
    }

    public static void a(String str, Throwable th) {
        if (a()) {
            a(str, " ", th.toString());
            c();
            th.printStackTrace();
            a(1, str, th);
        }
    }

    public static void a(String str, boolean z) {
        if (a()) {
            a(str, " ", String.valueOf(z));
            c();
            a(1, str + " " + z, (Throwable) null);
        }
    }

    public static void a(String str, byte[] bArr) {
        a(str, bArr, 0, bArr == null ? 0 : bArr.length);
    }

    public static void a(String str, byte[] bArr, int i, int i2) {
        if (a()) {
            StringBuffer stringBuffer = new StringBuffer();
            if (bArr == null) {
                stringBuffer.append(" null byte[]");
            } else {
                stringBuffer.append(" [");
                for (int i3 = i; i3 < i + i2; i3++) {
                    if (i3 != i) {
                        stringBuffer.append(", ");
                    }
                    stringBuffer.append(new Byte(bArr[i3]).toString());
                }
                stringBuffer.append("]");
                if (i2 > 4) {
                    stringBuffer.append(" ").append(i2);
                }
            }
            a(str, stringBuffer.toString(), (String) null);
            c();
            a(1, str + stringBuffer.toString(), (Throwable) null);
        }
    }

    public static boolean a() {
        if (!f92b) {
            b();
        }
        return f91a;
    }

    private static String b(int i) {
        return i > 99 ? String.valueOf(i) : i > 9 ? "0" + String.valueOf(i) : "00" + String.valueOf(i);
    }

    private static synchronized void b() {
        synchronized (a.class) {
            if (!f92b) {
                f92b = true;
                c = f91a;
                try {
                    d dVar = new d();
                    a(dVar);
                    if (dVar.a(1)) {
                        f91a = true;
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    public static void b(String str) {
        if (a()) {
            a("error ", str, (String) null);
            c();
            a(4, str, (Throwable) null);
        }
    }

    public static void b(String str, long j) {
        if (a()) {
            a(str, " 0x", e.a(j));
            c();
            a(1, str + " 0x" + e.a(j), (Throwable) null);
        }
    }

    public static void b(String str, Throwable th) {
        if (a()) {
            a("error ", str, " " + th);
            c();
            th.printStackTrace();
            a(4, str, th);
        }
    }

    private static void c() {
        if (f || !c) {
        }
    }
}
