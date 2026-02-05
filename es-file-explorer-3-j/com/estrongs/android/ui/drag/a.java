package com.estrongs.android.ui.drag;

/* loaded from: classes.dex */
class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f1943a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Object f1944b;
    final /* synthetic */ DragActionZone c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(DragActionZone dragActionZone, j jVar, Object obj) {
        this.c = dragActionZone;
        this.f1943a = jVar;
        this.f1944b = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        c cVar;
        cVar = this.c.f1934a;
        cVar.b(this.f1943a, this.f1944b);
    }
}
