package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class eq implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2108a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eq(bz bzVar) {
        this.f2108a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        FileExplorerActivity fileExplorerActivity6;
        l = this.f2108a.l();
        if (l.size() == 0) {
            fileExplorerActivity6 = this.f2108a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity6.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() == 1) {
            com.estrongs.fs.g gVar = (com.estrongs.fs.g) l.get(0);
            fileExplorerActivity4 = this.f2108a.l;
            com.estrongs.android.pop.utils.aj.a(fileExplorerActivity4, gVar);
            fileExplorerActivity5 = this.f2108a.l;
            fileExplorerActivity5.l();
        } else {
            fileExplorerActivity = this.f2108a.l;
            com.estrongs.android.view.ar t = fileExplorerActivity.t();
            if (t != null) {
                fileExplorerActivity3 = this.f2108a.l;
                com.estrongs.android.pop.utils.aj.a(fileExplorerActivity3, t.x());
            }
            fileExplorerActivity2 = this.f2108a.l;
            fileExplorerActivity2.l();
        }
        return true;
    }
}
