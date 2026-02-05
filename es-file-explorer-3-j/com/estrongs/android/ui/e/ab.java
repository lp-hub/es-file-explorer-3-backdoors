package com.estrongs.android.ui.e;

/* loaded from: classes.dex */
class ab implements com.estrongs.android.ui.b.dc {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ y f1971a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(y yVar) {
        this.f1971a = yVar;
    }

    @Override // com.estrongs.android.ui.b.dc
    public void a(int i) {
        com.estrongs.android.ui.b.cx cxVar;
        com.estrongs.android.view.ar t = this.f1971a.f2195a.k.t();
        if (t != null) {
            com.estrongs.android.pop.view.utils.ac.a(this.f1971a.f2195a.f1968b, t.c(), i % 4, i / 4);
            t.a((!com.estrongs.android.util.ak.Q(t.c()) || com.estrongs.android.util.ak.X(t.c())) ? this.f1971a.f2195a.k.m.p(t.c()) : this.f1971a.f2195a.k.m.q(t.c()));
        }
        cxVar = this.f1971a.f2195a.J;
        cxVar.dismiss();
    }
}
