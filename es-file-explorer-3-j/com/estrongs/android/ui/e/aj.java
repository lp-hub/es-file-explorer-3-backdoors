package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class aj implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1981a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(w wVar) {
        this.f1981a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.pcs.d dVar = new com.estrongs.android.ui.pcs.d(this.f1981a.f1968b);
        dVar.a(new ak(this));
        dVar.a();
        return false;
    }
}
