package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class dq implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2076a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dq(bz bzVar) {
        this.f2076a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        List<com.estrongs.fs.g> l;
        fileExplorerActivity = this.f2076a.l;
        com.estrongs.android.view.e eVar = (com.estrongs.android.view.e) fileExplorerActivity.t();
        if (eVar != null) {
            l = this.f2076a.l();
            eVar.a(l, false);
        }
        fileExplorerActivity2 = this.f2076a.l;
        fileExplorerActivity2.l();
        return true;
    }
}
