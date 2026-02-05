package com.estrongs.android.pop.app.imageviewer;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ay implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f959a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ay(ViewImage21 viewImage21) {
        this.f959a = viewImage21;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        Runnable runnable;
        n nVar = this.f959a.f930b;
        runnable = this.f959a.F;
        nVar.removeCallbacks(runnable);
        this.f959a.f();
        this.f959a.a();
        if (this.f959a.g != null) {
            this.f959a.g.a(90);
        }
        this.f959a.k();
        return true;
    }
}
