package com.estrongs.android.ui.f;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f2221a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f2222b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(f fVar, FileExplorerActivity fileExplorerActivity) {
        this.f2222b = fVar;
        this.f2221a = fileExplorerActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        f.a(this.f2221a);
        this.f2222b.a(true);
        return true;
    }
}
