package com.estrongs.android.ftp;

import android.content.Context;
import android.util.Log;
import com.estrongs.android.util.ai;
import java.io.File;
import java.net.InetAddress;
import java.net.ServerSocket;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public String f309a;

    /* renamed from: b, reason: collision with root package name */
    public String f310b;
    public boolean g;
    public String h;
    private int k;
    private static a l = null;
    public static boolean d = false;
    public static String f = "UTF-8";
    public static boolean i = false;
    public Thread c = null;
    public boolean e = false;
    private int m = 2000;
    private InetAddress n = null;
    private ServerSocket o = null;
    private int p = 0;
    private int q = 0;
    private Object r = new Object();
    private Thread s = null;
    private boolean t = false;
    private long u = 0;
    private long v = 0;
    public d j = null;

    protected a(String str, String str2, int i2, String str3) {
        this.f309a = null;
        this.f310b = null;
        this.k = 21;
        this.g = false;
        this.h = null;
        this.f309a = str;
        this.f310b = str2;
        this.k = i2;
        this.g = (this.f309a == null || this.f309a.length() == 0) && (this.f310b == null || this.f310b.length() == 0);
        str3 = str3 == null ? "/sdcard" : str3;
        File file = new File(str3);
        str3 = (file.exists() && file.isDirectory()) ? str3 : "/sdcard";
        if (str3.equals("/")) {
            this.h = "";
        } else if (str3.endsWith("/")) {
            this.h = str3.substring(0, str3.length() - 1);
        } else {
            this.h = str3;
        }
    }

    public static synchronized a a(String str, String str2, int i2, String str3) {
        a aVar;
        synchronized (a.class) {
            if (l == null) {
                l = new a(str, str2, i2, str3);
            } else {
                l.b(str, str2, i2, str3);
            }
            aVar = l;
        }
        return aVar;
    }

    private void b(String str, String str2, int i2, String str3) {
        this.f309a = str;
        this.f310b = str2;
        this.k = i2;
        this.g = (str == null || str.length() == 0) && (str2 == null || str2.length() == 0);
        if (str3 == null) {
            str3 = "/sdcard";
        }
        File file = new File(str3);
        if (!file.exists() || !file.isDirectory()) {
            str3 = "/sdcard";
        }
        if (str3.equals("/")) {
            this.h = "";
        } else if (str3.endsWith("/")) {
            this.h = str3.substring(0, str3.length() - 1);
        } else {
            this.h = str3;
        }
    }

    public static synchronized a e() {
        a aVar;
        synchronized (a.class) {
            aVar = l;
        }
        return aVar;
    }

    public static void j() {
        d = true;
        if (l == null) {
            Log.e("Error", "IN Server, stop inst is null");
        } else {
            l.k();
            l = null;
        }
    }

    private void l() {
        this.t = true;
        this.s = null;
    }

    private void m() {
        this.t = false;
        this.u = 0L;
        this.v = 0L;
        if (this.j != null) {
            this.j.a(0, 0);
        }
        this.s = new b(this);
        this.s.start();
    }

    public int a(Context context) {
        d = false;
        i = false;
        if (this.e) {
            return 0;
        }
        try {
            String a2 = ai.a(context);
            if (a2 != null) {
                this.n = InetAddress.getByName(a2);
            }
            if (this.n == null) {
                return 2;
            }
            try {
                this.o = new ServerSocket(this.k, 5);
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.e = false;
            this.c = new c(this);
            this.c.start();
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    public void a() {
        synchronized (this.r) {
            this.p++;
            if (this.s == null) {
                m();
            }
            if (this.j != null) {
                this.j.a(this.q, this.p);
            }
        }
    }

    public void a(long j) {
        synchronized (this.r) {
            this.u += j;
        }
    }

    public void a(String str) {
        if (str == null) {
            this.h = "";
            return;
        }
        if (str.equals("/")) {
            this.h = "";
        }
        if (str.endsWith("/")) {
            this.h = str.substring(0, str.length() - 1);
        } else {
            this.h = str;
        }
    }

    public void a(String str, String str2) {
        this.f309a = str;
        this.f310b = str2;
        this.g = (str == null || str.length() == 0) && (str2 == null || str2.length() == 0);
    }

    public void b() {
        synchronized (this.r) {
            this.p--;
            if (this.p == 0 && this.q == 0) {
                l();
            }
            if (this.j != null) {
                this.j.a(this.q, this.p);
            }
        }
    }

    public void b(long j) {
        synchronized (this.r) {
            this.v += j;
        }
    }

    public void c() {
        synchronized (this.r) {
            this.q++;
            if (this.s == null) {
                m();
            }
            if (this.j != null) {
                this.j.a(this.q, this.p);
            }
        }
    }

    public void d() {
        synchronized (this.r) {
            this.q--;
            if (this.p == 0 && this.q == 0) {
                l();
            }
            if (this.j != null) {
                this.j.a(this.q, this.p);
            }
        }
    }

    public synchronized int f() {
        this.m++;
        return this.m - 1;
    }

    public InetAddress g() {
        return this.n;
    }

    public int h() {
        return this.k;
    }

    public boolean i() {
        return this.e;
    }

    public void k() {
        i = false;
        try {
            this.o.close();
        } catch (Exception e) {
        }
    }
}
