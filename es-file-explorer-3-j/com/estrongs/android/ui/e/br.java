package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.app.LocalFileSharingActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class br implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f2015a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bq f2016b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public br(bq bqVar, LocalFileSharingActivity localFileSharingActivity) {
        this.f2016b = bqVar;
        this.f2015a = localFileSharingActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2015a.c();
        return false;
    }
}
