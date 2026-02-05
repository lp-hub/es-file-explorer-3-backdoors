package com.estrongs.android.pop.app.compress;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements com.estrongs.android.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f625a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(l lVar) {
        this.f625a = lVar;
    }

    @Override // com.estrongs.android.a.h
    public void a(boolean z, boolean z2) {
        com.estrongs.io.a.a.a aVar;
        com.estrongs.io.a.a.a aVar2;
        com.estrongs.io.a.a.a aVar3;
        com.estrongs.io.a.a.a aVar4;
        aVar = this.f625a.n;
        aVar.b(z);
        aVar2 = this.f625a.n;
        aVar2.a(z2);
        aVar3 = this.f625a.n;
        synchronized (aVar3) {
            aVar4 = this.f625a.n;
            aVar4.notify();
        }
    }
}
