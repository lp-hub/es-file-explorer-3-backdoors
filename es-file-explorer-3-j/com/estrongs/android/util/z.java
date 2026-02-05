package com.estrongs.android.util;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f2717a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(x xVar) {
        this.f2717a = xVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.f2717a.k();
    }
}
