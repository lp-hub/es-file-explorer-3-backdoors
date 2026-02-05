package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import com.estrongs.android.pop.app.ESNetSettingActivity;

/* loaded from: classes.dex */
class v implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ u f2193a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(u uVar) {
        this.f2193a = uVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        Intent intent = new Intent(this.f2193a.f1968b, (Class<?>) ESNetSettingActivity.class);
        intent.setFlags(268435456);
        this.f2193a.f1968b.startActivity(intent);
        return false;
    }
}
