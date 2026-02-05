package com.estrongs.android.pop.utils;

/* loaded from: classes.dex */
class bo implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bn f1236a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo(bn bnVar) {
        this.f1236a = bnVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1236a.d.setText(this.f1236a.f1234a.toString());
    }
}
