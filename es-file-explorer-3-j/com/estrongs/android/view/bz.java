package com.estrongs.android.view;

import com.estrongs.android.util.TypedMap;

/* loaded from: classes.dex */
class bz implements com.estrongs.android.ui.pcs.ag {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ by f2795a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bz(by byVar) {
        this.f2795a = byVar;
    }

    @Override // com.estrongs.android.ui.pcs.ag
    public void a(String str) {
        if (str != null) {
            String str2 = "SP://" + com.estrongs.android.ui.pcs.aw.a().f() + "@pcs";
            com.estrongs.fs.impl.l.b bVar = (com.estrongs.fs.impl.l.b) this.f2795a.f2793a;
            bVar.setPath(str2);
            bVar.setAbsolutePath(str2);
            bVar.setDisplayName(com.estrongs.android.util.ak.ab(str2));
            this.f2795a.f2794b.f2789a.a(bVar, (TypedMap) null);
        }
    }
}
