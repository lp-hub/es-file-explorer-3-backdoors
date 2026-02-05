package com.estrongs.android.pop.app.imageviewer;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ax implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f958a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(ViewImage21 viewImage21) {
        this.f958a = viewImage21;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        Runnable runnable;
        n nVar = this.f958a.f930b;
        runnable = this.f958a.F;
        nVar.removeCallbacks(runnable);
        this.f958a.f();
        this.f958a.a();
        ac.a(this.f958a, this.f958a.l);
        this.f958a.k();
        return true;
    }
}
