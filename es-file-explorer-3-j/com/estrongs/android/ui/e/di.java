package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class di implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2067a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public di(bz bzVar) {
        this.f2067a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        l = this.f2067a.l();
        if (l.size() == 0) {
            fileExplorerActivity4 = this.f2067a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity4.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() >= 1 && (l.get(0) instanceof com.estrongs.fs.impl.b.c)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = l.iterator();
            while (it.hasNext()) {
                arrayList.add((com.estrongs.fs.impl.b.c) ((com.estrongs.fs.g) it.next()));
            }
            fileExplorerActivity = this.f2067a.l;
            com.estrongs.android.pop.utils.c M = fileExplorerActivity.M();
            fileExplorerActivity2 = this.f2067a.l;
            M.c(fileExplorerActivity2, arrayList);
        }
        fileExplorerActivity3 = this.f2067a.l;
        fileExplorerActivity3.l();
        return true;
    }
}
