package com.estrongs.android.view;

import com.estrongs.android.util.TypedMap;

/* loaded from: classes.dex */
class bx implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bw f2792a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bx(bw bwVar) {
        this.f2792a = bwVar;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (!z || str2 == null) {
            return;
        }
        String str3 = "SP://" + com.estrongs.android.ui.pcs.aw.a().f() + "@pcs";
        com.estrongs.fs.impl.l.b bVar = (com.estrongs.fs.impl.l.b) this.f2792a.f2790a;
        bVar.setPath(str3);
        bVar.setAbsolutePath(str3);
        bVar.setDisplayName(com.estrongs.android.util.ak.ab(str3));
        this.f2792a.f2791b.f2789a.a(bVar, (TypedMap) null);
    }
}
