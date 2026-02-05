package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class cf implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2033a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cf(bz bzVar) {
        this.f2033a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        l = this.f2033a.l();
        if (l.size() == 0) {
            fileExplorerActivity3 = this.f2033a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity3.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() == 1) {
            com.estrongs.fs.g gVar = (com.estrongs.fs.g) l.get(0);
            fileExplorerActivity = this.f2033a.l;
            com.estrongs.android.pop.q.a(fileExplorerActivity).a(gVar.getPath(), com.estrongs.android.util.ak.c(gVar.getPath()));
            fileExplorerActivity2 = this.f2033a.l;
            fileExplorerActivity2.l();
        }
        return true;
    }
}
