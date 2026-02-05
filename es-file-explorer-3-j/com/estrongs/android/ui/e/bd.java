package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class bd implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2002a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bd(w wVar) {
        this.f2002a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.fs.impl.k.a.a(this.f2002a.k, this.f2002a.k.t());
        this.f2002a.k.j();
        return false;
    }
}
