package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class ej implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2100a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ej(bz bzVar) {
        this.f2100a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        l = this.f2100a.l();
        if (l.size() == 0) {
            fileExplorerActivity4 = this.f2100a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity4.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
            return true;
        }
        if (l.size() == 1) {
            String absolutePath = ((com.estrongs.fs.g) l.get(0)).getAbsolutePath();
            fileExplorerActivity2 = this.f2100a.l;
            com.estrongs.android.pop.utils.aj.b(fileExplorerActivity2, absolutePath);
            fileExplorerActivity3 = this.f2100a.l;
            com.estrongs.android.view.ar t = fileExplorerActivity3.t();
            if (t != null && !t.m()) {
                t.b(true);
            }
        }
        fileExplorerActivity = this.f2100a.l;
        fileExplorerActivity.l();
        return false;
    }
}
