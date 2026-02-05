package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class cd implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2031a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cd(bz bzVar) {
        this.f2031a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        l = this.f2031a.l();
        if (l.size() == 0) {
            fileExplorerActivity4 = this.f2031a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity4.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
            return true;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = l.iterator();
        while (it.hasNext()) {
            arrayList.add(((com.estrongs.fs.g) it.next()).getAbsolutePath());
        }
        fileExplorerActivity = this.f2031a.l;
        String u = fileExplorerActivity.u();
        if (com.estrongs.android.util.ak.aK(u)) {
            u = com.estrongs.android.util.ak.aM(u);
        }
        fileExplorerActivity2 = this.f2031a.l;
        new com.estrongs.android.pop.app.compress.z(fileExplorerActivity2, u, arrayList).b();
        fileExplorerActivity3 = this.f2031a.l;
        fileExplorerActivity3.l();
        return true;
    }
}
