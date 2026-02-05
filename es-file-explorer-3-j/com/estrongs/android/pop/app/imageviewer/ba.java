package com.estrongs.android.pop.app.imageviewer;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ba implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f963a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(ViewImage21 viewImage21) {
        this.f963a = viewImage21;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f963a.l();
        this.f963a.k();
        return true;
    }
}
