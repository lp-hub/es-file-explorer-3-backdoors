package com.estrongs.android.ui.c;

/* loaded from: classes.dex */
class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1902a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f1903b;
    final /* synthetic */ i c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(i iVar, com.estrongs.a.a aVar, int i) {
        this.c = iVar;
        this.f1902a = aVar;
        this.f1903b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.a.a aVar;
        com.estrongs.a.a aVar2 = this.f1902a;
        aVar = this.c.f1901a.j;
        if (aVar2 == aVar) {
            this.c.f1901a.a(this.f1903b);
        }
    }
}
