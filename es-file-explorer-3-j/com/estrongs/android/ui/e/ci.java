package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.LocalFileSharingActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class ci implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2036a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ci(bz bzVar) {
        this.f2036a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2036a.l();
        if (l.size() == 0) {
            fileExplorerActivity2 = this.f2036a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity2.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
            return true;
        }
        fileExplorerActivity = this.f2036a.l;
        LocalFileSharingActivity.a(fileExplorerActivity, (List<com.estrongs.fs.g>) l);
        return true;
    }
}
