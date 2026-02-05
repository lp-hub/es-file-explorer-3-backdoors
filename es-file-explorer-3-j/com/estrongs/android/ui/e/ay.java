package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ay implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1996a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ay(w wVar) {
        this.f1996a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (FileExplorerActivity.E() == null) {
            return false;
        }
        FileExplorerActivity.E().b((View) null, true);
        return false;
    }
}
