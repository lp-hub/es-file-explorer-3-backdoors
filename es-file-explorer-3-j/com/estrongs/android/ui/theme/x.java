package com.estrongs.android.ui.theme;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeColorActivity f2564a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(ThemeColorActivity themeColorActivity) {
        this.f2564a = themeColorActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2564a.c();
        com.estrongs.android.ui.view.z.a(this.f2564a, C0000R.string.noteeditor_save_success, 0).show();
        this.f2564a.finish();
        return false;
    }
}
