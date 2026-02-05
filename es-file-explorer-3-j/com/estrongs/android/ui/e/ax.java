package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import com.estrongs.android.ui.preference.FtpServerPreference;

/* loaded from: classes.dex */
class ax implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1995a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(w wVar) {
        this.f1995a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f1995a.f1968b.startActivity(new Intent(this.f1995a.f1968b, (Class<?>) FtpServerPreference.class));
        return false;
    }
}
