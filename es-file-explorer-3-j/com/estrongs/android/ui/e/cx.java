package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class cx implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2054a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cx(bz bzVar) {
        this.f2054a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        FileExplorerActivity fileExplorerActivity6;
        FileExplorerActivity fileExplorerActivity7;
        FileExplorerActivity fileExplorerActivity8;
        fileExplorerActivity = this.f2054a.l;
        if (fileExplorerActivity.C()) {
            fileExplorerActivity2 = this.f2054a.l;
            com.estrongs.android.view.n.a(fileExplorerActivity2).i().c();
            fileExplorerActivity3 = this.f2054a.l;
            if (com.estrongs.android.pop.q.a(fileExplorerActivity3).u()) {
                fileExplorerActivity4 = this.f2054a.l;
                if (com.estrongs.android.view.n.a(fileExplorerActivity4).h() == 1) {
                    fileExplorerActivity5 = this.f2054a.l;
                    com.estrongs.android.view.n.a(fileExplorerActivity5).e();
                }
            }
        } else {
            fileExplorerActivity7 = this.f2054a.l;
            com.estrongs.android.view.n.a(fileExplorerActivity7).f();
            fileExplorerActivity8 = this.f2054a.l;
            fileExplorerActivity8.d(C0000R.string.paste_not_allow_msg);
        }
        fileExplorerActivity6 = this.f2054a.l;
        fileExplorerActivity6.l();
        return true;
    }
}
