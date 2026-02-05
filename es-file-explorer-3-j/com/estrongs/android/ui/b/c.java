package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1686a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f1686a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        FileExplorerActivity fileExplorerActivity;
        dialogInterface.dismiss();
        fileExplorerActivity = this.f1686a.c;
        com.estrongs.android.pop.utils.c.a(fileExplorerActivity, this.f1686a.f1612a.c());
    }
}
