package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ga implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f2152a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fy f2153b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ga(fy fyVar, FileExplorerActivity fileExplorerActivity) {
        this.f2153b = fyVar;
        this.f2152a = fileExplorerActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2152a.a(this.f2152a.u(), true);
        return true;
    }
}
