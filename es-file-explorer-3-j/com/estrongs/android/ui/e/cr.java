package com.estrongs.android.ui.e;

import android.app.Activity;
import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cr implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2046a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cr(bz bzVar) {
        this.f2046a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        String str;
        boolean z;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        l = this.f2046a.l();
        String absolutePath = ((com.estrongs.fs.g) l.get(0)).getAbsolutePath();
        if (absolutePath != null) {
            if (com.estrongs.android.util.ak.aO(absolutePath)) {
                z = true;
                str = absolutePath;
            } else {
                str = com.estrongs.android.pop.a.c + "/" + com.estrongs.android.util.ak.d(absolutePath);
                z = false;
            }
            fileExplorerActivity = this.f2046a.l;
            com.estrongs.android.ui.theme.ai a2 = com.estrongs.android.ui.theme.al.a(fileExplorerActivity).a();
            if (a2 != null) {
                cs csVar = new cs(this, str, a2.a() + "background.dat");
                if (z) {
                    csVar.run();
                } else {
                    fileExplorerActivity3 = this.f2046a.l;
                    AppRunner.a((Activity) fileExplorerActivity3, absolutePath, str, (Runnable) csVar, false);
                }
            } else {
                fileExplorerActivity2 = this.f2046a.l;
                com.estrongs.android.ui.view.z.a(fileExplorerActivity2.getBaseContext(), "Sorry, cant set background as themedata is not available", 0).show();
            }
        }
        return true;
    }
}
