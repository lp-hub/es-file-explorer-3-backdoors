package com.estrongs.android.pop.bt;

import java.io.IOException;

/* loaded from: classes.dex */
class f extends Thread {

    /* renamed from: a, reason: collision with root package name */
    private final g f1106a;

    public boolean a() {
        return this.f1106a.b();
    }

    public void b() {
        this.f1106a.c();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.f1106a.a();
        } catch (IOException e) {
        }
    }
}
