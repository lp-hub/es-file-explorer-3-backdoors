package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ed implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2093a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ed(bz bzVar) {
        this.f2093a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        l = this.f2093a.l();
        if (l.size() == 0) {
            fileExplorerActivity3 = this.f2093a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity3.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            fileExplorerActivity = this.f2093a.l;
            com.estrongs.fs.impl.k.a.a(fileExplorerActivity, (List<com.estrongs.fs.g>) l, new ee(this));
        }
        fileExplorerActivity2 = this.f2093a.l;
        fileExplorerActivity2.l();
        return false;
    }
}
