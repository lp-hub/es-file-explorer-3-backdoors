package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class eh implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2097a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eh(bz bzVar) {
        this.f2097a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List<com.estrongs.fs.g> l;
        String m;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        l = this.f2097a.l();
        if (l.size() == 0) {
            fileExplorerActivity5 = this.f2097a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity5.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            m = this.f2097a.m();
            if (com.estrongs.android.util.ak.au(m) || com.estrongs.android.util.ak.aC(m)) {
                fileExplorerActivity = this.f2097a.l;
                fileExplorerActivity2 = this.f2097a.l;
                fileExplorerActivity.a(fileExplorerActivity2.getString(C0000R.string.action_copy_to), l, true);
            } else {
                ei eiVar = new ei(this, l);
                int i = com.estrongs.android.pop.m.j ? -2 : -1;
                String b2 = com.estrongs.android.pop.b.b();
                fileExplorerActivity3 = this.f2097a.l;
                fileExplorerActivity4 = this.f2097a.l;
                fileExplorerActivity3.a(C0000R.drawable.menu_operating, fileExplorerActivity4.getString(C0000R.string.action_copy_to), eiVar, i, b2);
            }
        }
        return true;
    }
}
