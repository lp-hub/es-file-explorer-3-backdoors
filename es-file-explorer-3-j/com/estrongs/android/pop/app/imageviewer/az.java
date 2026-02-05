package com.estrongs.android.pop.app.imageviewer;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class az implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f960a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(ViewImage21 viewImage21) {
        this.f960a = viewImage21;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.pop.app.imageviewer.gallery.e a2 = this.f960a.e.a(this.f960a.c);
        ac.a(this.f960a, a2.e(), a2);
        this.f960a.k();
        return true;
    }
}
