package com.estrongs.android.ui.theme;

import android.view.MenuItem;
import com.estrongs.android.ui.a.ci;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeActivity f2551a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(ThemeActivity themeActivity) {
        this.f2551a = themeActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        ci ciVar;
        ci ciVar2;
        ciVar = this.f2551a.c;
        int a2 = ciVar.a();
        ciVar2 = this.f2551a.c;
        ai item = ciVar2.getItem(a2);
        if (this.f2551a.getPackageName().equals(item.f2528b)) {
            menuItem.setEnabled(false);
        } else {
            item.c(this.f2551a);
        }
        return false;
    }
}
