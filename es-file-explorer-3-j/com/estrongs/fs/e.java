package com.estrongs.fs;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g[] f3045a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f3046b;
    final /* synthetic */ d c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, g[] gVarArr, String str) {
        this.c = dVar;
        this.f3045a = gVarArr;
        this.f3046b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3045a[0] = this.c.j(this.f3046b);
    }
}
