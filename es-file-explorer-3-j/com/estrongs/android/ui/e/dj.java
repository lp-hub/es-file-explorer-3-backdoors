package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class dj implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2068a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dj(bz bzVar) {
        this.f2068a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2068a.l();
        if (l.size() > 0) {
            Object extra = ((com.estrongs.fs.g) l.get(0)).getExtra("task");
            if (extra instanceof com.estrongs.a.a) {
                String aY = com.estrongs.android.util.ak.aY(((com.estrongs.a.a) extra).summary().optString("target"));
                fileExplorerActivity2 = this.f2068a.l;
                fileExplorerActivity2.d(aY);
            }
        }
        fileExplorerActivity = this.f2068a.l;
        fileExplorerActivity.l();
        return false;
    }
}
