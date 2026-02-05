package com.estrongs.android.ui.a;

/* loaded from: classes.dex */
class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f1590a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(j jVar) {
        this.f1590a = jVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1590a.f1589b.notifyDataSetChanged();
    }
}
