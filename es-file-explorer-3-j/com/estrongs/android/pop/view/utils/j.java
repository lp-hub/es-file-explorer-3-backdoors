package com.estrongs.android.pop.view.utils;

/* loaded from: classes.dex */
class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1452a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ i f1453b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(i iVar, String str) {
        this.f1453b = iVar;
        this.f1452a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f1453b.f1450a, this.f1452a, 1).show();
    }
}
