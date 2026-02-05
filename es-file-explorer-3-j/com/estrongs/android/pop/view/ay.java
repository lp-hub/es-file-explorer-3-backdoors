package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ay implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1328a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ at f1329b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ay(at atVar, com.estrongs.fs.g gVar) {
        this.f1329b = atVar;
        this.f1328a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.b.ag agVar = (com.estrongs.android.ui.b.ag) dialogInterface;
        String obj = ((EditText) agVar.findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        String J = com.estrongs.android.pop.q.a(this.f1329b.f1320a).J();
        if (obj == null || obj.length() == 0 || !obj.equals(J)) {
            com.estrongs.android.ui.view.z.a(this.f1329b.f1320a, C0000R.string.msg_wrong_password, 1).show();
            return;
        }
        boolean unused = FileExplorerActivity.av = true;
        agVar.dismiss();
        this.f1329b.b(this.f1328a);
    }
}
