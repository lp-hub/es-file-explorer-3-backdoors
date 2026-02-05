package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class dz implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2087a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dz(bz bzVar) {
        this.f2087a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List<com.estrongs.fs.g> l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2087a.l();
        if (l.size() == 0) {
            fileExplorerActivity2 = this.f2087a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity2.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
            return true;
        }
        fileExplorerActivity = this.f2087a.l;
        fileExplorerActivity.a(l);
        return true;
    }
}
