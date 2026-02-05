package com.estrongs.android.pop.view;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bn implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1349a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(FileExplorerActivity fileExplorerActivity) {
        this.f1349a = fileExplorerActivity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f1349a.B();
    }
}
