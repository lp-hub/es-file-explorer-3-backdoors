package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class dr implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2077a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dr(bz bzVar) {
        this.f2077a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2077a.l();
        if (l.size() == 0) {
            fileExplorerActivity2 = this.f2077a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity2.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() == 1) {
            String absolutePath = ((com.estrongs.fs.g) l.get(0)).getAbsolutePath();
            if (!com.estrongs.fs.impl.local.d.h(absolutePath)) {
                absolutePath = com.estrongs.android.util.ak.aY(absolutePath);
            }
            fileExplorerActivity = this.f2077a.l;
            fileExplorerActivity.a(absolutePath);
        }
        return true;
    }
}
