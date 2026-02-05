package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class bj implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2007a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(w wVar) {
        this.f2007a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.pop.app.b.a.a().f();
        return true;
    }
}
