package com.estrongs.android.ui.e;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class dh implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2066a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dh(bz bzVar) {
        this.f2066a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        l = this.f2066a.l();
        if (l.size() == 0) {
            fileExplorerActivity4 = this.f2066a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity4.getBaseContext(), C0000R.string.grid_item_not_selected, 0).show();
        } else if (l.size() >= 1) {
            if (l.get(0) instanceof com.estrongs.fs.impl.b.c) {
                fileExplorerActivity2 = this.f2066a.l;
                PackageManager packageManager = fileExplorerActivity2.getPackageManager();
                Iterator it = l.iterator();
                while (it.hasNext()) {
                    ApplicationInfo c = ((com.estrongs.fs.impl.b.c) ((com.estrongs.fs.g) it.next())).c();
                    String str = "";
                    try {
                        str = packageManager.getApplicationLabel(packageManager.getApplicationInfo(c.packageName, 0)).toString();
                    } catch (PackageManager.NameNotFoundException e) {
                        e.printStackTrace();
                    }
                    com.estrongs.android.pop.q.a(this.f2066a.f1968b, c.packageName, str);
                }
            }
            fileExplorerActivity = this.f2066a.l;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity.getBaseContext(), C0000R.string.settings_done, 0).show();
        }
        fileExplorerActivity3 = this.f2066a.l;
        fileExplorerActivity3.l();
        return true;
    }
}
