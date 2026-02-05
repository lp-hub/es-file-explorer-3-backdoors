package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class an implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1985a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(w wVar) {
        this.f1985a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.pcs.a aVar = new com.estrongs.android.ui.pcs.a(this.f1985a.k);
        aVar.a(com.estrongs.android.ui.pcs.aw.a().j());
        aVar.a();
        return false;
    }
}
