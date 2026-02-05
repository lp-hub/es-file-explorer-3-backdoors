package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class el implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2102a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public el(bz bzVar) {
        this.f2102a = bzVar;
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
        l = this.f2102a.l();
        if (l.size() == 0) {
            fileExplorerActivity5 = this.f2102a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity5.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            m = this.f2102a.m();
            if (com.estrongs.android.util.ak.au(m) || com.estrongs.android.util.ak.aC(m)) {
                fileExplorerActivity = this.f2102a.l;
                fileExplorerActivity2 = this.f2102a.l;
                fileExplorerActivity.a(fileExplorerActivity2.getString(C0000R.string.action_copy_to), l, false);
            } else {
                em emVar = new em(this, l);
                String b2 = com.estrongs.android.pop.b.b();
                int i = com.estrongs.android.pop.m.j ? -2 : -1;
                fileExplorerActivity3 = this.f2102a.l;
                fileExplorerActivity4 = this.f2102a.l;
                fileExplorerActivity3.a(C0000R.drawable.menu_operating, fileExplorerActivity4.getString(C0000R.string.action_move_to), emVar, i, b2);
            }
        }
        return true;
    }
}
