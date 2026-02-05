package com.estrongs.android.ui.e;

import android.content.pm.ApplicationInfo;
import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class df implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2064a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public df(bz bzVar) {
        this.f2064a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        String m;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        l = this.f2064a.l();
        if (l.size() == 0) {
            fileExplorerActivity4 = this.f2064a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity4.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() == 1) {
            if (l.get(0) instanceof com.estrongs.fs.impl.b.c) {
                ApplicationInfo c = ((com.estrongs.fs.impl.b.c) l.get(0)).c();
                fileExplorerActivity3 = this.f2064a.l;
                fileExplorerActivity3.M().a(c);
            } else {
                fileExplorerActivity2 = this.f2064a.l;
                new com.estrongs.android.ui.b.df(fileExplorerActivity2, (com.estrongs.fs.g) l.get(0)).a();
            }
        } else if (!(l.get(0) instanceof com.estrongs.fs.impl.b.c)) {
            fileExplorerActivity = this.f2064a.l;
            m = this.f2064a.m();
            new com.estrongs.android.ui.b.bh(fileExplorerActivity, l, m).a();
        }
        return true;
    }
}
