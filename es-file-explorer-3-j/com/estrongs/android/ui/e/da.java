package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class da implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2058a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public da(bz bzVar) {
        this.f2058a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        fileExplorerActivity = this.f2058a.l;
        com.estrongs.android.view.ar t = fileExplorerActivity.t();
        if (t != null) {
            List<com.estrongs.fs.g> x = t.x();
            ArrayList arrayList = new ArrayList(x.size());
            for (int i = 0; i < x.size(); i++) {
                arrayList.add((com.estrongs.fs.impl.b.c) x.get(i));
            }
            fileExplorerActivity3 = this.f2058a.l;
            com.estrongs.android.pop.utils.c M = fileExplorerActivity3.M();
            fileExplorerActivity4 = this.f2058a.l;
            M.a(fileExplorerActivity4, arrayList);
        }
        fileExplorerActivity2 = this.f2058a.l;
        fileExplorerActivity2.l();
        return false;
    }
}
