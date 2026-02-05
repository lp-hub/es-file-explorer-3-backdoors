package com.estrongs.android.ui.e;

import android.view.MenuItem;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f2057a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.f2057a = cVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        gi giVar;
        gi giVar2;
        giVar = this.f2057a.o;
        if (giVar == null) {
            this.f2057a.l();
        }
        List<com.estrongs.android.view.a.a> subList = this.f2057a.f1967a.subList(5, this.f2057a.f1967a.size());
        giVar2 = this.f2057a.o;
        giVar2.a(subList);
        this.f2057a.b(true);
        return true;
    }
}
