package com.estrongs.android.ui.drag;

/* loaded from: classes.dex */
class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f1945a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Object f1946b;
    final /* synthetic */ DragActionZone c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(DragActionZone dragActionZone, j jVar, Object obj) {
        this.c = dragActionZone;
        this.f1945a = jVar;
        this.f1946b = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        c cVar;
        cVar = this.c.f1934a;
        cVar.b(this.f1945a, this.f1946b);
    }
}
