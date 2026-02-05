package com.estrongs.android.ui.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f1901a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(f fVar) {
        this.f1901a = fVar;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        com.estrongs.a.a aVar2;
        a aVar3;
        aVar2 = this.f1901a.j;
        if (aVar != aVar2) {
            return;
        }
        aVar3 = this.f1901a.i;
        aVar3.f1893b.post(new j(this, aVar, i2));
    }
}
