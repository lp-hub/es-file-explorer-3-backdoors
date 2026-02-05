package com.estrongs.android.util;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class y extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f2716a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x xVar) {
        this.f2716a = xVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.f2716a.k();
    }
}
