package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class au implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1992a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(w wVar) {
        this.f1992a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.view.ar t;
        if (this.f1992a.k.t() != null && (this.f1992a.k.t() instanceof com.estrongs.android.pop.app.diskusage.e) && (t = this.f1992a.k.t()) != null) {
            new com.estrongs.android.pop.app.diskusage.a(this.f1992a.k, (com.estrongs.android.pop.app.diskusage.e) t).show();
        }
        return true;
    }
}
