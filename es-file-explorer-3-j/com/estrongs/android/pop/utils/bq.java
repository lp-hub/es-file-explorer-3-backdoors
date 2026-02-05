package com.estrongs.android.pop.utils;

/* loaded from: classes.dex */
class bq implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bp f1239a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bq(bp bpVar) {
        this.f1239a = bpVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1239a.d.setText(this.f1239a.f1237a.toString());
    }
}
