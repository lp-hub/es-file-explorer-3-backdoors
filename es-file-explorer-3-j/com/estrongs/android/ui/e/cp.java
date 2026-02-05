package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class cp implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2044a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cp(bz bzVar) {
        this.f2044a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        List l2;
        List l3;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        l = this.f2044a.l();
        if (l.size() == 0) {
            fileExplorerActivity3 = this.f2044a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity3.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            l2 = this.f2044a.l();
            if (l2.size() == 1) {
                l3 = this.f2044a.l();
                String absolutePath = ((com.estrongs.fs.g) l3.get(0)).getAbsolutePath();
                fileExplorerActivity = this.f2044a.l;
                new com.estrongs.android.pop.app.compress.a(fileExplorerActivity, false, absolutePath, null, null, null).a();
                fileExplorerActivity2 = this.f2044a.l;
                fileExplorerActivity2.l();
            }
        }
        return true;
    }
}
