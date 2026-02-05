package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class an implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1502a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(s sVar) {
        this.f1502a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.pop.q qVar;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        qVar = this.f1502a.e;
        if (qVar.aD()) {
            fileExplorerActivity2 = this.f1502a.c;
            fileExplorerActivity2.c("recycle://");
        } else {
            fileExplorerActivity = this.f1502a.c;
            new com.estrongs.android.ui.b.aq(fileExplorerActivity).a(C0000R.string.recycle_title).b(C0000R.string.enable_recycle_message).c(C0000R.string.confirm_cancel, (DialogInterface.OnClickListener) null).b(C0000R.string.confirm_ok, new ao(this)).b();
        }
    }
}
