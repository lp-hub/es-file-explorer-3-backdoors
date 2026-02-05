package com.estrongs.android.ui.theme;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aa implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeColorActivity f2516a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(ThemeColorActivity themeColorActivity) {
        this.f2516a = themeColorActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f2516a.c();
        this.f2516a.finish();
    }
}
