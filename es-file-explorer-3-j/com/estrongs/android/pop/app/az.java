package com.estrongs.android.pop.app;

import android.view.MenuItem;

/* loaded from: classes.dex */
class az implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ GestureManageActivity f470a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(GestureManageActivity gestureManageActivity) {
        this.f470a = gestureManageActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.b.eo eoVar = new com.estrongs.android.ui.b.eo(this.f470a);
        eoVar.b();
        eoVar.a(new ba(this, eoVar));
        return false;
    }
}
