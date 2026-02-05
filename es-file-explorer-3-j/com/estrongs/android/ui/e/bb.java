package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class bb implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2000a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(w wVar) {
        this.f2000a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        int i;
        this.f2000a.k.f.a(true);
        w wVar = this.f2000a;
        i = this.f2000a.p;
        wVar.d(i);
        return false;
    }
}
