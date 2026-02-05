package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
class bo implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1350a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo(FileExplorerActivity fileExplorerActivity) {
        this.f1350a = fileExplorerActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1350a.l();
        com.estrongs.android.pop.utils.aj.a((ESActivity) this.f1350a, this.f1350a.z, this.f1350a.W.d(), this.f1350a.p);
        this.f1350a.W.i();
    }
}
