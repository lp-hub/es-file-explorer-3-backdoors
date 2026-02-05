package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class x implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2194a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(w wVar) {
        this.f2194a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2194a.n();
        this.f2194a.e(1);
        return false;
    }
}
