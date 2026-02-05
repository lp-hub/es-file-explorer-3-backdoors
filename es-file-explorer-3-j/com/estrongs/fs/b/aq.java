package com.estrongs.fs.b;

/* loaded from: classes.dex */
class aq implements com.estrongs.android.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ao f2982a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(ao aoVar) {
        this.f2982a = aoVar;
    }

    @Override // com.estrongs.android.a.h
    public void a(boolean z, boolean z2) {
        com.estrongs.a.a.e eVar;
        com.estrongs.a.a.e eVar2;
        com.estrongs.a.a.e eVar3;
        com.estrongs.a.a.e eVar4;
        com.estrongs.a.a.e eVar5;
        eVar = this.f2982a.f2980a.h;
        synchronized (eVar) {
            if (z) {
                eVar5 = this.f2982a.f2980a.h;
                eVar5.g = 1;
            } else {
                eVar2 = this.f2982a.f2980a.h;
                eVar2.g = 2;
            }
            eVar3 = this.f2982a.f2980a.h;
            eVar3.f = z2;
            eVar4 = this.f2982a.f2980a.h;
            eVar4.notify();
        }
    }
}
