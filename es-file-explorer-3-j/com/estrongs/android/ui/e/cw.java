package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class cw implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2053a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cw(bz bzVar) {
        this.f2053a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List<com.estrongs.fs.g> l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2053a.l();
        if (l.size() == 0) {
            fileExplorerActivity2 = this.f2053a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity2.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            com.estrongs.android.pop.utils.aa.a(l);
            com.estrongs.fs.a.b.a().c(l);
        }
        fileExplorerActivity = this.f2053a.l;
        fileExplorerActivity.l();
        return true;
    }
}
