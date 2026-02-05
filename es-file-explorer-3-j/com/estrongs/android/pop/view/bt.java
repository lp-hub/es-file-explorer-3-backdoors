package com.estrongs.android.pop.view;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bt implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1357a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(FileExplorerActivity fileExplorerActivity) {
        this.f1357a = fileExplorerActivity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f1357a.B();
    }
}
