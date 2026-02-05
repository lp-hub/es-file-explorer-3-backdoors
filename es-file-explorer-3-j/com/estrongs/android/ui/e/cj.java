package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.LocalFileSharingActivity;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class cj implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2037a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj(bz bzVar) {
        this.f2037a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        l = this.f2037a.l();
        if (l.size() == 0) {
            fileExplorerActivity3 = this.f2037a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity3.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            fileExplorerActivity = this.f2037a.l;
            LocalFileSharingActivity.a((ESActivity) fileExplorerActivity, (List<com.estrongs.fs.g>) l, true);
        }
        fileExplorerActivity2 = this.f2037a.l;
        fileExplorerActivity2.l();
        return true;
    }
}
