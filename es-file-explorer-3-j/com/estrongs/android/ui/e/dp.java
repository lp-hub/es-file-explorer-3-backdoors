package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class dp implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2075a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dp(bz bzVar) {
        this.f2075a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2075a.l();
        if (l.size() == 1 && (((com.estrongs.fs.g) l.get(0)).getExtra("task") instanceof com.estrongs.a.a)) {
            fileExplorerActivity2 = this.f2075a.l;
            new com.estrongs.android.ui.c.d(fileExplorerActivity2, (com.estrongs.fs.g) l.get(0)).a();
        }
        fileExplorerActivity = this.f2075a.l;
        fileExplorerActivity.l();
        return false;
    }
}
