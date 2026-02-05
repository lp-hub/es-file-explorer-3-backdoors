package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gb implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f2154a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fy f2155b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gb(fy fyVar, FileExplorerActivity fileExplorerActivity) {
        this.f2155b = fyVar;
        this.f2154a = fileExplorerActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2154a.s = false;
        this.f2154a.j = "normal_mode";
        this.f2154a.h();
        return true;
    }
}
