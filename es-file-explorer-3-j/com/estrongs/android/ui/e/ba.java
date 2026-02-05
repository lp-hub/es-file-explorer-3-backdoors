package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ba implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1999a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(w wVar) {
        this.f1999a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (FileExplorerActivity.E() == null || !(FileExplorerActivity.E().t() instanceof com.estrongs.android.view.cs)) {
            return false;
        }
        ((com.estrongs.android.view.cs) FileExplorerActivity.E().t()).p();
        return false;
    }
}
