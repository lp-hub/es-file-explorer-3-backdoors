package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class cl implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2039a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cl(bz bzVar) {
        this.f2039a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        FileExplorerActivity fileExplorerActivity;
        List l;
        FileExplorerActivity fileExplorerActivity2;
        fileExplorerActivity = this.f2039a.l;
        l = this.f2039a.l();
        bz.a(fileExplorerActivity, false, com.estrongs.android.util.aw.a(l));
        fileExplorerActivity2 = this.f2039a.l;
        fileExplorerActivity2.l();
        return true;
    }
}
