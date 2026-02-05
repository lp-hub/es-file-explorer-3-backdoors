package com.estrongs.android.ui.e;

/* loaded from: classes.dex */
class am implements com.estrongs.android.ui.pcs.ag {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ al f1984a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(al alVar) {
        this.f1984a = alVar;
    }

    @Override // com.estrongs.android.ui.pcs.ag
    public void a(String str) {
        com.estrongs.android.ui.pcs.aw a2 = com.estrongs.android.ui.pcs.aw.a();
        if (a2.j() != null) {
            if (str == null) {
                a2.j().a(false, null, null);
                return;
            }
            a2.j().a(true, null, str);
            com.estrongs.fs.impl.pcs.b.a().setFileType(com.estrongs.fs.l.N);
            com.estrongs.android.pop.q.a(this.f1984a.f1983a.f1968b).d(System.currentTimeMillis());
        }
    }
}
