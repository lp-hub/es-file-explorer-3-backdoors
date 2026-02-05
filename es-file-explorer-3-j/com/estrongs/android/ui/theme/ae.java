package com.estrongs.android.ui.theme;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ae implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeFolderActivity f2520a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(ThemeFolderActivity themeFolderActivity) {
        this.f2520a = themeFolderActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f2520a.c();
        this.f2520a.finish();
    }
}
