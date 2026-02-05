package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class az implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1997a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(w wVar) {
        this.f1997a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (FileExplorerActivity.E() == null || !(FileExplorerActivity.E().t() instanceof com.estrongs.android.view.cs)) {
            return false;
        }
        ((com.estrongs.android.view.cs) FileExplorerActivity.E().t()).f();
        return false;
    }
}
