package com.estrongs.android.ui.theme;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeFolderActivity f2519a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ThemeFolderActivity themeFolderActivity) {
        this.f2519a = themeFolderActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f2519a.finish();
    }
}
