package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.ImageCommentPostActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class ds implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2078a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ds(bz bzVar) {
        this.f2078a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        l = this.f2078a.l();
        if (l.size() == 0) {
            fileExplorerActivity5 = this.f2078a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity5.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
            return true;
        }
        fileExplorerActivity = this.f2078a.l;
        Intent intent = new Intent(fileExplorerActivity, (Class<?>) ImageCommentPostActivity.class);
        fileExplorerActivity2 = this.f2078a.l;
        fileExplorerActivity2.a(intent, (com.estrongs.fs.g) l.get(0));
        fileExplorerActivity3 = this.f2078a.l;
        fileExplorerActivity3.startActivity(intent);
        fileExplorerActivity4 = this.f2078a.l;
        fileExplorerActivity4.l();
        return true;
    }
}
