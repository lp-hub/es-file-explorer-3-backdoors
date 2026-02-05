package com.estrongs.android.pop.app.imageviewer;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bc implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f965a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bc(ViewImage21 viewImage21) {
        this.f965a = viewImage21;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.pop.app.imageviewer.gallery.e a2 = this.f965a.e.a(this.f965a.c);
        ac.a(this.f965a, a2.e(), a2, this.f965a.f930b);
        this.f965a.k();
        return true;
    }
}
