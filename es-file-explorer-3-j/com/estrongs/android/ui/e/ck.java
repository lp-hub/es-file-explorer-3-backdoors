package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.List;

/* loaded from: classes.dex */
class ck implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2038a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ck(bz bzVar) {
        this.f2038a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        FileExplorerActivity fileExplorerActivity;
        List l;
        FileExplorerActivity fileExplorerActivity2;
        fileExplorerActivity = this.f2038a.l;
        l = this.f2038a.l();
        AppRunner.s(fileExplorerActivity, ((com.estrongs.fs.g) l.get(0)).getAbsolutePath());
        fileExplorerActivity2 = this.f2038a.l;
        fileExplorerActivity2.l();
        return true;
    }
}
