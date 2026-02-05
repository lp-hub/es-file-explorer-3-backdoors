package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class dy implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2086a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dy(bz bzVar) {
        this.f2086a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        List<com.estrongs.fs.g> l;
        fileExplorerActivity = this.f2086a.l;
        fileExplorerActivity2 = this.f2086a.l;
        String string = fileExplorerActivity2.getString(C0000R.string.action_save_to);
        l = this.f2086a.l();
        fileExplorerActivity.b(string, l, true);
        return true;
    }
}
