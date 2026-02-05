package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class cz implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2056a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cz(bz bzVar) {
        this.f2056a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2056a.l();
        ArrayList arrayList = new ArrayList(l.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= l.size()) {
                fileExplorerActivity = this.f2056a.l;
                fileExplorerActivity.M().a(arrayList);
                fileExplorerActivity2 = this.f2056a.l;
                fileExplorerActivity2.l();
                return true;
            }
            arrayList.add((com.estrongs.fs.impl.b.c) l.get(i2));
            i = i2 + 1;
        }
    }
}
