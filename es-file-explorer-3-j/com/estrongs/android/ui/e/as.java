package com.estrongs.android.ui.e;

/* loaded from: classes.dex */
class as implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f1990a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(ar arVar) {
        this.f1990a = arVar;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (z && com.estrongs.android.util.aw.b((CharSequence) str2)) {
            String path = com.estrongs.fs.impl.pcs.b.a().getPath();
            com.estrongs.android.view.ar t = this.f1990a.f1989a.k.t();
            if (t != null) {
                if (com.estrongs.android.util.ak.d(path, t.c())) {
                    if (com.estrongs.android.util.ak.ao(path) && com.estrongs.android.util.aw.b((CharSequence) com.estrongs.android.ui.pcs.aw.a().g()) && !com.estrongs.android.ui.pcs.aw.a().g().equals(com.estrongs.android.ui.pcs.aw.a().f())) {
                        com.estrongs.fs.impl.i.b.l(com.estrongs.android.ui.pcs.aw.a().i());
                    }
                    t.b(true);
                } else {
                    if (com.estrongs.android.util.aw.b((CharSequence) com.estrongs.android.ui.pcs.aw.a().g()) && !com.estrongs.android.ui.pcs.aw.a().g().equals(com.estrongs.android.ui.pcs.aw.a().f())) {
                        com.estrongs.fs.impl.i.b.l(com.estrongs.android.ui.pcs.aw.a().i());
                    }
                    if (com.estrongs.android.util.ak.ao(t.c())) {
                        t.a(path);
                    } else {
                        t.a("pcs://");
                    }
                }
            }
            com.estrongs.fs.a.b.a().a(com.estrongs.android.util.ak.g(), (String) null);
            if (com.estrongs.android.util.aw.b((CharSequence) com.estrongs.android.ui.pcs.aw.a().g())) {
                com.estrongs.fs.a.b.a().a(com.estrongs.android.ui.pcs.aw.a().i(), (String) null);
            }
            this.f1990a.f1989a.k.z();
            com.estrongs.fs.impl.pcs.b.a().setFileType(com.estrongs.fs.l.N);
            com.estrongs.android.pop.q.a(this.f1990a.f1989a.f1968b).d(System.currentTimeMillis());
        }
    }
}
