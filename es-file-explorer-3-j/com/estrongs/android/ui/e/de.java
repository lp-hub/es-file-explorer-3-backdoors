package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class de implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2063a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public de(bz bzVar) {
        this.f2063a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2063a.l();
        ArrayList arrayList = new ArrayList(l.size());
        for (int i = 0; i < l.size(); i++) {
            arrayList.add((com.estrongs.fs.impl.b.c) l.get(i));
        }
        fileExplorerActivity = this.f2063a.l;
        fileExplorerActivity.M().b(arrayList);
        fileExplorerActivity2 = this.f2063a.l;
        fileExplorerActivity2.l();
        return false;
    }
}
