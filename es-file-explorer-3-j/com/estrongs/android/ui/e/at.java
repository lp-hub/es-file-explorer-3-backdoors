package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class at implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1991a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(w wVar) {
        this.f1991a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.view.ar t = this.f1991a.k.t();
        if (t == null) {
            return false;
        }
        this.f1991a.a(t.c(), (String) null);
        return false;
    }
}
