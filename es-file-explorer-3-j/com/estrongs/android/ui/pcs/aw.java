package com.estrongs.android.ui.pcs;

import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class aw {

    /* renamed from: a, reason: collision with root package name */
    private static aw f2298a;
    private String c;
    private String d;
    private d f;
    private v h;
    private List<v> e = new LinkedList();
    private boolean g = false;

    /* renamed from: b, reason: collision with root package name */
    private int f2299b = 0;

    public static aw a() {
        if (f2298a == null) {
            f2298a = new aw();
        }
        return f2298a;
    }

    public static void b() {
        f2298a = null;
    }

    public void a(int i) {
        this.f2299b = i;
        if (i == 2) {
            this.g = false;
        }
    }

    public void a(d dVar) {
        this.f = dVar;
    }

    public void a(v vVar) {
        this.h = vVar;
    }

    public void a(String str) {
        this.d = this.c;
        this.c = str;
    }

    public boolean c() {
        return this.f2299b > 0;
    }

    public boolean d() {
        return this.f2299b == 2;
    }

    public int e() {
        return this.f2299b;
    }

    public String f() {
        return this.c;
    }

    public String g() {
        return this.d;
    }

    public String h() {
        if (this.c != null) {
            return "pcs://" + f() + "@pcs";
        }
        return null;
    }

    public String i() {
        if (this.d != null) {
            return "pcs://" + g() + "@pcs";
        }
        return null;
    }

    public v j() {
        return this.h;
    }

    public d k() {
        return this.f;
    }

    public boolean l() {
        return this.g;
    }
}
