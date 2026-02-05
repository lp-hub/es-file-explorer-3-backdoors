package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f2088a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(c cVar) {
        this.f2088a = cVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        gi giVar;
        gi giVar2;
        giVar = this.f2088a.o;
        if (giVar.c()) {
            giVar2 = this.f2088a.o;
            giVar2.d();
        }
        this.f2088a.b(false);
        return true;
    }
}
