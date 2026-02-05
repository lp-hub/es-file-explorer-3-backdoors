package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
class dc implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2061a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dc(bz bzVar) {
        this.f2061a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List<com.estrongs.fs.g> l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        l = this.f2061a.l();
        LinkedList linkedList = new LinkedList();
        for (com.estrongs.fs.g gVar : l) {
            if (!gVar.getFileType().a()) {
                linkedList.add(gVar);
            }
        }
        if (linkedList.size() == 1) {
            fileExplorerActivity2 = this.f2061a.l;
            com.estrongs.android.pop.utils.aj.a(fileExplorerActivity2, ((com.estrongs.fs.g) linkedList.get(0)).getAbsolutePath());
        } else if (linkedList.size() > 1) {
            fileExplorerActivity = this.f2061a.l;
            com.estrongs.android.pop.utils.aj.a(fileExplorerActivity, com.estrongs.android.util.aw.a((List) linkedList));
        }
        return false;
    }
}
