package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cp implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f634a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cp(LocalFileSharingActivity localFileSharingActivity) {
        this.f634a = localFileSharingActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f634a.c();
        dialogInterface.dismiss();
    }
}
