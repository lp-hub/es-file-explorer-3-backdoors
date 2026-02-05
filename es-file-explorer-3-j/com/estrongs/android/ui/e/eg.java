package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class eg implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2096a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eg(bz bzVar) {
        this.f2096a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        l = this.f2096a.l();
        if (l.size() == 0) {
            fileExplorerActivity3 = this.f2096a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity3.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            fileExplorerActivity = this.f2096a.l;
            com.estrongs.android.pop.utils.aj.b(fileExplorerActivity, (List<com.estrongs.fs.g>) l);
        }
        fileExplorerActivity2 = this.f2096a.l;
        fileExplorerActivity2.l();
        return true;
    }
}
