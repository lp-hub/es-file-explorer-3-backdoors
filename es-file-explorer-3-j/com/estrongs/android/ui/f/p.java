package com.estrongs.android.ui.f;

import android.content.Intent;
import android.view.MenuItem;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.ThemeActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f2219a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f2220b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(f fVar, FileExplorerActivity fileExplorerActivity) {
        this.f2220b = fVar;
        this.f2219a = fileExplorerActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2219a.i();
        if (!FexApplication.e()) {
            this.f2219a.startActivityForResult(new Intent(this.f2219a, (Class<?>) ThemeActivity.class), 268439584);
        }
        this.f2220b.a(true);
        return true;
    }
}
