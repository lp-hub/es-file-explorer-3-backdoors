package com.estrongs.android.ui.theme;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ac implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeFolderActivity f2518a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(ThemeFolderActivity themeFolderActivity) {
        this.f2518a = themeFolderActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f2518a.c();
        com.estrongs.android.ui.view.z.a(this.f2518a, C0000R.string.noteeditor_save_success, 0).show();
        this.f2518a.finish();
        return false;
    }
}
