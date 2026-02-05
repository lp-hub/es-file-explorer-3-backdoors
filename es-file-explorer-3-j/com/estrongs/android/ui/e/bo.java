package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class bo implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2013a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo(w wVar) {
        this.f2013a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.view.az azVar;
        azVar = this.f2013a.n;
        if (!azVar.a()) {
            this.f2013a.k.s();
        }
        return true;
    }
}
