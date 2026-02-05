package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class en implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2105a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public en(bz bzVar) {
        this.f2105a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List<com.estrongs.fs.g> l;
        String m;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        FileExplorerActivity fileExplorerActivity6;
        FileExplorerActivity fileExplorerActivity7;
        l = this.f2105a.l();
        if (l.size() == 0) {
            fileExplorerActivity7 = this.f2105a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity7.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            m = this.f2105a.m();
            if (com.estrongs.android.util.ak.s(m)) {
                fileExplorerActivity6 = this.f2105a.l;
                com.estrongs.android.view.ar t = fileExplorerActivity6.t();
                if (t instanceof com.estrongs.android.pop.app.diskusage.e) {
                    ((com.estrongs.android.pop.app.diskusage.e) t).a(l);
                }
            } else if (com.estrongs.android.util.ak.ai(m)) {
                fileExplorerActivity4 = this.f2105a.l;
                com.estrongs.android.pop.q.a(fileExplorerActivity4).j(true);
                fileExplorerActivity5 = this.f2105a.l;
                new com.estrongs.android.ui.b.aq(fileExplorerActivity5).a(C0000R.string.message_hint).b(C0000R.string.tips_facebook_delete).a(C0000R.string.confirm_ok, new eo(this)).a().show();
            } else if (com.estrongs.android.util.ak.ah(m)) {
                fileExplorerActivity2 = this.f2105a.l;
                com.estrongs.android.pop.q.a(fileExplorerActivity2).h(true);
                fileExplorerActivity3 = this.f2105a.l;
                new com.estrongs.android.ui.b.aq(fileExplorerActivity3).a(C0000R.string.message_hint).b(C0000R.string.tips_instagram_delete).a(C0000R.string.confirm_ok, new ep(this)).a().show();
            } else {
                fileExplorerActivity = this.f2105a.l;
                fileExplorerActivity.a(l);
            }
        }
        return true;
    }
}
