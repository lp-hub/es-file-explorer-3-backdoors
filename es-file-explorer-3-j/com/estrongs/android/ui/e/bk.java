package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bk implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2008a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bk(w wVar) {
        this.f2008a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.view.e eVar;
        if (this.f2008a.k.t() != null && (this.f2008a.k.t() instanceof com.estrongs.android.view.e) && (eVar = (com.estrongs.android.view.e) this.f2008a.k.t()) != null) {
            new com.estrongs.android.util.b(this.f2008a.k, eVar.f2834b, new bl(this, eVar)).a();
        }
        return true;
    }
}
