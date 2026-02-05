package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import com.estrongs.android.ui.preference.RecyclePreference;

/* loaded from: classes.dex */
class be implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2003a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(w wVar) {
        this.f2003a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2003a.f1968b.startActivity(new Intent(this.f2003a.f1968b, (Class<?>) RecyclePreference.class));
        return false;
    }
}
