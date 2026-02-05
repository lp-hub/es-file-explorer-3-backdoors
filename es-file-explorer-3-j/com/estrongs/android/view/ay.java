package com.estrongs.android.view;

/* loaded from: classes.dex */
class ay implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.i f2756a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ax f2757b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ay(ax axVar, com.estrongs.a.a.i iVar) {
        this.f2757b = axVar;
        this.f2756a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2757b.f2755a.U() || !this.f2757b.f2755a.X) {
            return;
        }
        this.f2757b.f2755a.c(this.f2757b.f2755a.n(this.f2757b.f2755a.W()) + "(" + this.f2756a.d + "/" + this.f2756a.c + ")");
    }
}
