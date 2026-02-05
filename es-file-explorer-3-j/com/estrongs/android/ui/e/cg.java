package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class cg implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2034a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cg(bz bzVar) {
        this.f2034a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2034a.l();
        if (l.size() == 0) {
            fileExplorerActivity2 = this.f2034a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity2.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() >= 1) {
            com.estrongs.fs.g gVar = (com.estrongs.fs.g) l.get(0);
            fk.a(this.f2034a.f1968b, gVar.getAbsolutePath(), gVar.getName(), gVar);
            fileExplorerActivity = this.f2034a.l;
            fileExplorerActivity.l();
        }
        return true;
    }
}
