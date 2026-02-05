package com.estrongs.android.pop.app;

import android.view.MenuItem;

/* loaded from: classes.dex */
class bc implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ GestureManageActivity f521a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bc(GestureManageActivity gestureManageActivity) {
        this.f521a = gestureManageActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f521a.setResult(-1);
        this.f521a.finish();
        return false;
    }
}
