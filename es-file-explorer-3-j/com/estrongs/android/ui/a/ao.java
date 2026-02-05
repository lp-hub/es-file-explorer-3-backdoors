package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ao implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f1503a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(an anVar) {
        this.f1503a = anVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.pop.q qVar;
        FileExplorerActivity fileExplorerActivity;
        dialogInterface.dismiss();
        qVar = this.f1503a.f1502a.e;
        qVar.u(true);
        fileExplorerActivity = this.f1503a.f1502a.c;
        fileExplorerActivity.c("recycle://");
    }
}
