package com.estrongs.android.pop.app.imageviewer;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bb implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f964a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(ViewImage21 viewImage21) {
        this.f964a = viewImage21;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.pop.app.imageviewer.gallery.e a2 = this.f964a.e.a(this.f964a.c);
        ac.b(this.f964a, a2.e(), a2);
        this.f964a.k();
        return true;
    }
}
