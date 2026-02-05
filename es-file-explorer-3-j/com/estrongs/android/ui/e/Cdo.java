package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* renamed from: com.estrongs.android.ui.e.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2074a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cdo(bz bzVar) {
        this.f2074a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List<com.estrongs.fs.g> l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        FileExplorerActivity fileExplorerActivity6;
        FileExplorerActivity fileExplorerActivity7;
        FileExplorerActivity fileExplorerActivity8;
        FileExplorerActivity fileExplorerActivity9;
        FileExplorerActivity fileExplorerActivity10;
        FileExplorerActivity fileExplorerActivity11;
        l = this.f2074a.l();
        if (l.size() == 0) {
            fileExplorerActivity11 = this.f2074a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity11.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            fileExplorerActivity = this.f2074a.l;
            fileExplorerActivity.p = true;
            fileExplorerActivity2 = this.f2074a.l;
            fileExplorerActivity2.s = true;
            fileExplorerActivity3 = this.f2074a.l;
            fileExplorerActivity3.z.clear();
            fileExplorerActivity4 = this.f2074a.l;
            fileExplorerActivity4.z.addAll(l);
            fileExplorerActivity5 = this.f2074a.l;
            com.estrongs.android.view.n a2 = com.estrongs.android.view.n.a(fileExplorerActivity5);
            fileExplorerActivity6 = this.f2074a.l;
            a2.a(l, fileExplorerActivity6.p);
            fileExplorerActivity7 = this.f2074a.l;
            fileExplorerActivity7.m();
            fileExplorerActivity8 = this.f2074a.l;
            fileExplorerActivity8.l();
            fileExplorerActivity9 = this.f2074a.l;
            fileExplorerActivity9.i.a("paste_mode", (Boolean) true);
            fileExplorerActivity10 = this.f2074a.l;
            fileExplorerActivity10.j = "paste_mode";
        }
        return true;
    }
}
