package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class co implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2043a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public co(bz bzVar) {
        this.f2043a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        FileExplorerActivity fileExplorerActivity;
        List l;
        FileExplorerActivity fileExplorerActivity2;
        fileExplorerActivity = this.f2043a.l;
        l = this.f2043a.l();
        bz.a(fileExplorerActivity, true, com.estrongs.android.util.aw.a(l));
        fileExplorerActivity2 = this.f2043a.l;
        fileExplorerActivity2.l();
        return true;
    }
}
