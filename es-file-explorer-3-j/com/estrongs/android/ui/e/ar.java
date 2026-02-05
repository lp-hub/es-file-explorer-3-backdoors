package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class ar implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1989a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(w wVar) {
        this.f1989a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.pcs.d dVar = new com.estrongs.android.ui.pcs.d(this.f1989a.f1968b);
        dVar.a(new as(this));
        dVar.c();
        dVar.a();
        return false;
    }
}
