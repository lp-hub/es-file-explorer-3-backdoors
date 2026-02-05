package com.estrongs.android.ui.a;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cs implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cp f1573a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cs(cp cpVar) {
        this.f1573a = cpVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        FileExplorerActivity fileExplorerActivity;
        fileExplorerActivity = this.f1573a.d;
        new com.estrongs.android.ui.b.av(fileExplorerActivity).a();
        return false;
    }
}
