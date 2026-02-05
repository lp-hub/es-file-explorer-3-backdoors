package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class bp implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2014a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(w wVar) {
        this.f2014a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2014a.k.j();
        return true;
    }
}
