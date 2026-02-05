package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class ce implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2032a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(bz bzVar) {
        this.f2032a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        l = this.f2032a.l();
        if (l.size() == 0) {
            fileExplorerActivity3 = this.f2032a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity3.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() == 1) {
            com.estrongs.fs.g gVar = (com.estrongs.fs.g) l.get(0);
            fileExplorerActivity = this.f2032a.l;
            com.estrongs.android.util.at.a(fileExplorerActivity.getBaseContext(), gVar);
            fileExplorerActivity2 = this.f2032a.l;
            fileExplorerActivity2.l();
        }
        return true;
    }
}
