package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.app.LocalFileSharingActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bt implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f2019a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bq f2020b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(bq bqVar, LocalFileSharingActivity localFileSharingActivity) {
        this.f2020b = bqVar;
        this.f2019a = localFileSharingActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2019a.b();
        return true;
    }
}
