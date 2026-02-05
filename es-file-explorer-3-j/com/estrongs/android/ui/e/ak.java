package com.estrongs.android.ui.e;

/* loaded from: classes.dex */
class ak implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ aj f1982a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(aj ajVar) {
        this.f1982a = ajVar;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (z && com.estrongs.android.util.aw.b((CharSequence) str2)) {
            com.estrongs.android.view.ar t = this.f1982a.f1981a.k.t();
            if (t != null) {
                t.b(true);
            }
            com.estrongs.fs.impl.pcs.b.a().setFileType(com.estrongs.fs.l.N);
            com.estrongs.android.pop.q.a(this.f1982a.f1981a.f1968b).d(System.currentTimeMillis());
        }
    }
}
