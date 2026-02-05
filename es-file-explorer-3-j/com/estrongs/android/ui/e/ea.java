package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class ea implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2089a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ea(bz bzVar) {
        this.f2089a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2089a.l();
        if (l.size() == 0) {
            fileExplorerActivity2 = this.f2089a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity2.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
            return true;
        }
        if (l.size() == 1) {
            new Thread(new eb(this, ((com.estrongs.fs.g) l.get(0)).getAbsolutePath())).start();
        }
        fileExplorerActivity = this.f2089a.l;
        fileExplorerActivity.l();
        return false;
    }
}
