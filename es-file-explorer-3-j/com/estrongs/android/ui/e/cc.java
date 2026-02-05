package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
class cc implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2030a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(bz bzVar) {
        this.f2030a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List<com.estrongs.fs.g> l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        l = this.f2030a.l();
        if (l.size() == 0) {
            fileExplorerActivity4 = this.f2030a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity4.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else {
            LinkedList linkedList = new LinkedList();
            for (com.estrongs.fs.g gVar : l) {
                if (!gVar.getFileType().a()) {
                    linkedList.add(gVar);
                }
            }
            if (linkedList.size() == 1) {
                fileExplorerActivity3 = this.f2030a.l;
                com.estrongs.android.pop.utils.aj.a(fileExplorerActivity3, ((com.estrongs.fs.g) linkedList.get(0)).getAbsolutePath());
            } else if (linkedList.size() > 1) {
                fileExplorerActivity = this.f2030a.l;
                com.estrongs.android.pop.utils.aj.a(fileExplorerActivity, com.estrongs.android.util.aw.a((List) linkedList));
            }
            fileExplorerActivity2 = this.f2030a.l;
            fileExplorerActivity2.l();
        }
        return true;
    }
}
