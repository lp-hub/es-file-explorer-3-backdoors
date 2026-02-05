package com.estrongs.android.view;

/* loaded from: classes.dex */
class ad implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.d.k f2728a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ac f2729b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ac acVar, com.estrongs.android.d.k kVar) {
        this.f2729b = acVar;
        this.f2728a = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2728a.f.setImageDrawable(this.f2728a.e);
        if (this.f2728a.f285a) {
            com.estrongs.android.d.d.a(com.estrongs.android.d.d.f(this.f2728a.c), this.f2728a.e, true);
        }
    }
}
