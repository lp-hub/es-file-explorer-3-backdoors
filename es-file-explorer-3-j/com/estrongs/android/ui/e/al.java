package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class al implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1983a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(w wVar) {
        this.f1983a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.pcs.x xVar = new com.estrongs.android.ui.pcs.x(this.f1983a.f1968b);
        xVar.a(new am(this));
        xVar.a();
        return false;
    }
}
