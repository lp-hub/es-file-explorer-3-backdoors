package com.estrongs.android.ui.e;

/* loaded from: classes.dex */
class aa extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1969a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ z f1970b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(z zVar, int i) {
        this.f1970b = zVar;
        this.f1969a = i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            ((com.estrongs.android.pop.app.diskusage.e) this.f1970b.f2196a.f2195a.k.t()).d(this.f1969a);
        } catch (Exception e) {
        }
    }
}
