package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dt implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2079a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dt(bz bzVar) {
        this.f2079a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        FileExplorerActivity fileExplorerActivity6;
        l = this.f2079a.l();
        if (l.size() == 0) {
            fileExplorerActivity6 = this.f2079a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity6.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            fileExplorerActivity = this.f2079a.l;
            if (com.estrongs.android.util.ak.ah(fileExplorerActivity.u())) {
                fileExplorerActivity4 = this.f2079a.l;
                com.estrongs.android.pop.q.a(fileExplorerActivity4).i(true);
                fileExplorerActivity5 = this.f2079a.l;
                new com.estrongs.android.ui.b.aq(fileExplorerActivity5).a(C0000R.string.message_hint).b(C0000R.string.tips_instagram_edit).a(C0000R.string.confirm_ok, new du(this)).a().show();
                return false;
            }
            com.estrongs.fs.g gVar = (com.estrongs.fs.g) l.get(0);
            fileExplorerActivity2 = this.f2079a.l;
            new FlickrPhotoPrivacyDialog(fileExplorerActivity2, new dv(this, gVar), (SPFileObject) gVar).show();
            fileExplorerActivity3 = this.f2079a.l;
            fileExplorerActivity3.l();
        }
        return true;
    }
}
