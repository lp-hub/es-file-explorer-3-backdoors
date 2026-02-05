package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cr implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f636a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cr(LocalFileSharingActivity localFileSharingActivity) {
        this.f636a = localFileSharingActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f636a.c();
        dialogInterface.dismiss();
    }
}
