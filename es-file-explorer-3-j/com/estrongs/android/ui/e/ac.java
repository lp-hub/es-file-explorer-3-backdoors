package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ac implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1972a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(w wVar) {
        this.f1972a = wVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
    
        if (r0.isShowing() == false) goto L9;
     */
    @Override // android.view.MenuItem.OnMenuItemClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.view.az azVar;
        com.estrongs.android.ui.b.cz czVar;
        com.estrongs.android.ui.b.cz czVar2;
        com.estrongs.android.ui.b.cz czVar3;
        com.estrongs.android.ui.b.cz czVar4;
        com.estrongs.android.ui.b.cz czVar5;
        azVar = this.f1972a.n;
        if (!azVar.a()) {
            this.f1972a.k.i();
            czVar = this.f1972a.G;
            if (czVar != null) {
                czVar5 = this.f1972a.G;
            }
            this.f1972a.G = new com.estrongs.android.ui.b.cz(this.f1972a.f1968b);
            czVar2 = this.f1972a.G;
            czVar2.a(new ad(this));
            czVar3 = this.f1972a.G;
            czVar3.a(new ae(this));
            czVar4 = this.f1972a.G;
            czVar4.show();
        }
        return true;
    }
}
