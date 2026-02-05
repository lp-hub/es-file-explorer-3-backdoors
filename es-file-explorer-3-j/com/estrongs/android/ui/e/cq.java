package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.compress.CompressionActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.List;

/* loaded from: classes.dex */
class cq implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2045a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cq(bz bzVar) {
        this.f2045a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        List l2;
        FileExplorerActivity fileExplorerActivity;
        List l3;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2045a.l();
        if (l.size() == 0) {
            fileExplorerActivity2 = this.f2045a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity2.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            l2 = this.f2045a.l();
            if (l2.size() == 1) {
                fileExplorerActivity = this.f2045a.l;
                l3 = this.f2045a.l();
                AppRunner.a(fileExplorerActivity, ((com.estrongs.fs.g) l3.get(0)).getAbsolutePath(), (Class<?>) CompressionActivity.class);
            }
        }
        return true;
    }
}
