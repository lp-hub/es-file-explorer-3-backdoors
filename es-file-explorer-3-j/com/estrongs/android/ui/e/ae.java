package com.estrongs.android.ui.e;

/* loaded from: classes.dex */
class ae implements com.estrongs.android.ui.b.dc {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ac f1974a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(ac acVar) {
        this.f1974a = acVar;
    }

    @Override // com.estrongs.android.ui.b.dc
    public void a(int i) {
        com.estrongs.android.ui.b.cz czVar;
        com.estrongs.android.view.ar t = this.f1974a.f1972a.k.t();
        if (t != null) {
            com.estrongs.android.pop.view.utils.ac.a(this.f1974a.f1972a.f1968b, t.c(), i % 4, i / 4);
            t.a((!com.estrongs.android.util.ak.Q(t.c()) || com.estrongs.android.util.ak.X(t.c())) ? this.f1974a.f1972a.k.m.p(t.c()) : this.f1974a.f1972a.k.m.q(t.c()));
        }
        czVar = this.f1974a.f1972a.G;
        czVar.dismiss();
    }
}
