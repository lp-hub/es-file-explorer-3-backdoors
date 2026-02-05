package com.estrongs.android.pop.view.utils;

/* loaded from: classes.dex */
class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1456a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ k f1457b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(k kVar, String str) {
        this.f1457b = kVar;
        this.f1456a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f1457b.f1454a, this.f1456a, 1).show();
    }
}
