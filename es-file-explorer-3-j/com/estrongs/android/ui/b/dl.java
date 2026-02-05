package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dl implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ df f1741a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dl(df dfVar) {
        this.f1741a = dfVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        dn dnVar;
        dn dnVar2;
        FileExplorerActivity E;
        com.estrongs.android.view.ar t;
        dnVar = this.f1741a.c;
        if (dnVar.f() && (E = FileExplorerActivity.E()) != null && (t = E.t()) != null) {
            t.b(true);
        }
        dnVar2 = this.f1741a.c;
        dnVar2.b();
    }
}
