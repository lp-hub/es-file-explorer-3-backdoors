package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class bn implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2012a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(w wVar) {
        this.f2012a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.view.az azVar;
        azVar = this.f2012a.n;
        if (!azVar.a()) {
            this.f2012a.k.s();
        }
        return true;
    }
}
