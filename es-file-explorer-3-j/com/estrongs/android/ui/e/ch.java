package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class ch implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2035a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ch(bz bzVar) {
        this.f2035a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        String m;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        l = this.f2035a.l();
        if (l.size() == 0) {
            fileExplorerActivity3 = this.f2035a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity3.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() == 1) {
            fileExplorerActivity2 = this.f2035a.l;
            new com.estrongs.android.ui.b.df(fileExplorerActivity2, (com.estrongs.fs.g) l.get(0)).a();
        } else if (l.size() > 1) {
            fileExplorerActivity = this.f2035a.l;
            m = this.f2035a.m();
            new com.estrongs.android.ui.b.bh(fileExplorerActivity, l, m).a();
        }
        return true;
    }
}
