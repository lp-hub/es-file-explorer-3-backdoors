package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class bc implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2001a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bc(w wVar) {
        this.f2001a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        int i;
        this.f2001a.k.f.a(false);
        w wVar = this.f2001a;
        i = this.f2001a.p;
        wVar.d(i);
        return false;
    }
}
