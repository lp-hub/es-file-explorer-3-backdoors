package com.estrongs.android.pop.app.imageviewer;

import java.lang.ref.SoftReference;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    com.estrongs.android.pop.app.imageviewer.gallery.e f961a;

    /* renamed from: b, reason: collision with root package name */
    SoftReference<al> f962b;

    public b() {
        c();
    }

    public al a() {
        al alVar;
        if (this.f962b == null || (alVar = this.f962b.get()) == null) {
            return null;
        }
        return alVar;
    }

    public boolean b() {
        al a2 = a();
        return (a2 == null || a2.g()) ? false : true;
    }

    public void c() {
        al alVar;
        this.f961a = null;
        if (this.f962b != null && (alVar = this.f962b.get()) != null) {
            alVar.h();
        }
        this.f962b = null;
    }
}
