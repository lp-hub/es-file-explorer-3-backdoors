package com.estrongs.android.ui.f;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f2216a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f2217b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(f fVar, FileExplorerActivity fileExplorerActivity) {
        this.f2217b = fVar;
        this.f2216a = fileExplorerActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2216a.finish();
        return true;
    }
}
