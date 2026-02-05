package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ci implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f564a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ci(LocalFileSharingActivity localFileSharingActivity) {
        this.f564a = localFileSharingActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
