package com.estrongs.fs;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    static final String[] f3033a = {"COMM", "FILESYSTEM", "NAMED_PIPE", "PRINTER", "SERVER", "SHARE", "WORKGROUP"};

    /* renamed from: b, reason: collision with root package name */
    public String f3034b;
    public boolean d;
    public boolean k;
    public boolean l;
    public boolean m;
    public String c = null;
    public long e = 0;
    public int f = 0;
    public int g = 0;
    public long h = 0;
    public long i = 0;
    public long j = 0;
    public boolean n = false;
    public String o = null;
    public String p = null;
    public int q = 0;

    public c(String str) {
        this.f3034b = null;
        this.f3034b = str;
    }

    public void a(int i) {
        switch (i) {
            case 1:
                this.c = f3033a[1];
                return;
            case 2:
                this.c = f3033a[5];
                return;
            case 4:
                this.c = f3033a[6];
                return;
            case 8:
                this.c = f3033a[4];
                return;
            case 16:
                this.c = f3033a[2];
                return;
            case 32:
                this.c = f3033a[3];
                return;
            case 64:
                this.c = f3033a[0];
                return;
            default:
                return;
        }
    }
}
