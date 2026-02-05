package com.estrongs.android.view;

/* loaded from: classes.dex */
class bm implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.b.t f2778a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f2779b;
    final /* synthetic */ String c;
    final /* synthetic */ bk d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bm(bk bkVar, com.estrongs.fs.b.t tVar, int i, String str) {
        this.d = bkVar;
        this.f2778a = tVar;
        this.f2779b = i;
        this.c = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.d.f2776b.a(this.f2778a, this.f2779b, this.c);
    }
}
