package com.estrongs.android.ui.theme;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class z implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeColorActivity f2566a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(ThemeColorActivity themeColorActivity) {
        this.f2566a = themeColorActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f2566a.finish();
    }
}
