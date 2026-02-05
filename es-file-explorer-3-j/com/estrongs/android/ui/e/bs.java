package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.LocalFileSharingActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bs implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f2017a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bq f2018b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bs(bq bqVar, LocalFileSharingActivity localFileSharingActivity) {
        this.f2018b = bqVar;
        this.f2017a = localFileSharingActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (menuItem.getTitle().toString().equals(this.f2017a.getString(C0000R.string.action_select_all))) {
            this.f2017a.d();
            return false;
        }
        this.f2017a.e();
        return false;
    }
}
