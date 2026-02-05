package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class dk implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2069a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dk(bz bzVar) {
        this.f2069a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List<com.estrongs.fs.g> l;
        FileExplorerActivity fileExplorerActivity;
        com.estrongs.a.a a2;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        l = this.f2069a.l();
        for (com.estrongs.fs.g gVar : l) {
            a2 = this.f2069a.a(gVar);
            if (a2 != null && (a2 instanceof com.estrongs.fs.b.q)) {
                com.estrongs.fs.b.q qVar = (com.estrongs.fs.b.q) a2;
                qVar.requestStop();
                String optString = a2.getTaskStatus() != 4 ? qVar.e : a2.summary().optString("target");
                try {
                    fileExplorerActivity4 = this.f2069a.l;
                    com.estrongs.fs.impl.local.d.a(fileExplorerActivity4, optString, (com.estrongs.a.b.p) null);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                fileExplorerActivity2 = this.f2069a.l;
                if (fileExplorerActivity2.t() instanceof com.estrongs.android.ui.c.u) {
                    fileExplorerActivity3 = this.f2069a.l;
                    com.estrongs.android.ui.c.f a3 = ((com.estrongs.android.ui.c.u) fileExplorerActivity3.t()).a(qVar);
                    if (a3 != null) {
                        com.estrongs.fs.b.q qVar2 = new com.estrongs.fs.b.q(com.estrongs.fs.d.a(), qVar.summary());
                        qVar2.reset();
                        qVar2.execute();
                        a3.a(qVar2);
                        gVar.putExtra("task", qVar2);
                        qVar.requestStop();
                        com.estrongs.a.l.a().b(qVar, false);
                        com.estrongs.a.l.a().a(qVar2, false);
                    }
                }
            }
        }
        fileExplorerActivity = this.f2069a.l;
        fileExplorerActivity.l();
        return false;
    }
}
