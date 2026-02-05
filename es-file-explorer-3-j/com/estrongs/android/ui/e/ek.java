package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class ek implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2101a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ek(bz bzVar) {
        this.f2101a = bzVar;
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
        FileExplorerActivity fileExplorerActivity12;
        l = this.f2101a.l();
        if (l.size() == 0) {
            fileExplorerActivity12 = this.f2101a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity12.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            fileExplorerActivity = this.f2101a.l;
            fileExplorerActivity.p = false;
            fileExplorerActivity2 = this.f2101a.l;
            fileExplorerActivity2.s = true;
            fileExplorerActivity3 = this.f2101a.l;
            fileExplorerActivity3.z.clear();
            fileExplorerActivity4 = this.f2101a.l;
            fileExplorerActivity4.z.addAll(l);
            fileExplorerActivity5 = this.f2101a.l;
            fileExplorerActivity6 = this.f2101a.l;
            com.estrongs.android.view.n a2 = com.estrongs.android.view.n.a(fileExplorerActivity6);
            fileExplorerActivity7 = this.f2101a.l;
            fileExplorerActivity5.o = a2.a(l, fileExplorerActivity7.p);
            fileExplorerActivity8 = this.f2101a.l;
            fileExplorerActivity8.m();
            fileExplorerActivity9 = this.f2101a.l;
            fileExplorerActivity9.l();
            fileExplorerActivity10 = this.f2101a.l;
            fileExplorerActivity10.i.a("paste_mode", (Boolean) true);
            fileExplorerActivity11 = this.f2101a.l;
            fileExplorerActivity11.j = "paste_mode";
        }
        return true;
    }
}
