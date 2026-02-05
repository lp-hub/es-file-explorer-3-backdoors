package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class cu implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ct f1575a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cu(ct ctVar) {
        this.f1575a = ctVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        int a2 = com.estrongs.android.ui.d.e.a();
        for (int i2 = 0; i2 < a2; i2++) {
            fileExplorerActivity2 = this.f1575a.f1574a.d;
            fileExplorerActivity2.g(0);
        }
        while (com.estrongs.android.ui.d.e.c() > 1) {
            fileExplorerActivity = this.f1575a.f1574a.d;
            fileExplorerActivity.g(1);
        }
        dialogInterface.dismiss();
        this.f1575a.f1574a.b();
    }
}
