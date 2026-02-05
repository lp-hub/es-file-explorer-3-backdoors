package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class dg implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2065a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dg(bz bzVar) {
        this.f2065a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List<com.estrongs.fs.g> l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        l = this.f2065a.l();
        if (l.size() == 0) {
            fileExplorerActivity4 = this.f2065a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity4.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() >= 1 && (l.get(0) instanceof com.estrongs.fs.impl.b.c)) {
            fileExplorerActivity = this.f2065a.l;
            com.estrongs.android.pop.utils.c M = fileExplorerActivity.M();
            fileExplorerActivity2 = this.f2065a.l;
            M.b(fileExplorerActivity2, l);
        }
        fileExplorerActivity3 = this.f2065a.l;
        fileExplorerActivity3.l();
        return true;
    }
}
