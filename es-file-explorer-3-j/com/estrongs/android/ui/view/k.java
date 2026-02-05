package com.estrongs.android.ui.view;

import com.estrongs.android.view.cr;

/* loaded from: classes.dex */
class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f2638a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(i iVar) {
        this.f2638a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        cr crVar;
        crVar = this.f2638a.f2636a.ag;
        crVar.a(Boolean.TRUE);
    }
}
