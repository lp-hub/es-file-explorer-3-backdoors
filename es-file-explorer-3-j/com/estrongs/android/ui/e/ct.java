package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ct implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2049a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ct(bz bzVar) {
        this.f2049a = bzVar;
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
        l = this.f2049a.l();
        if (l.size() == 0) {
            fileExplorerActivity9 = this.f2049a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity9.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() >= 1) {
            fileExplorerActivity = this.f2049a.l;
            if (com.estrongs.fs.impl.local.h.a((Context) fileExplorerActivity, false)) {
                fileExplorerActivity5 = this.f2049a.l;
                if (com.estrongs.android.pop.q.a(fileExplorerActivity5).aa()) {
                    fileExplorerActivity6 = this.f2049a.l;
                    com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(fileExplorerActivity6);
                    fileExplorerActivity7 = this.f2049a.l;
                    com.estrongs.android.ui.b.aq a2 = aqVar.a(fileExplorerActivity7.getText(C0000R.string.message_confirm));
                    fileExplorerActivity8 = this.f2049a.l;
                    a2.b(fileExplorerActivity8.getText(C0000R.string.apk_install_confirm)).b(C0000R.string.confirm_ok, new cv(this, l)).c(C0000R.string.confirm_cancel, new cu(this));
                    aqVar.b();
                    fileExplorerActivity4 = this.f2049a.l;
                    fileExplorerActivity4.l();
                }
            }
            for (com.estrongs.fs.g gVar : l) {
                if (com.estrongs.android.util.ak.aP(gVar.getPath())) {
                    fileExplorerActivity2 = this.f2049a.l;
                    fileExplorerActivity2.a(gVar.getPath(), gVar.getAbsolutePath());
                } else {
                    fileExplorerActivity3 = this.f2049a.l;
                    AppRunner.r(fileExplorerActivity3, gVar.getAbsolutePath());
                }
            }
            fileExplorerActivity4 = this.f2049a.l;
            fileExplorerActivity4.l();
        }
        return true;
    }
}
