package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class bc implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1335a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ba f1336b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bc(ba baVar, com.estrongs.fs.g gVar) {
        this.f1336b = baVar;
        this.f1335a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.b.ag agVar = (com.estrongs.android.ui.b.ag) dialogInterface;
        String obj = ((EditText) agVar.findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        String J = com.estrongs.android.pop.q.a(this.f1336b.f1333a).J();
        if (obj == null || obj.length() == 0 || !obj.equals(J)) {
            com.estrongs.android.ui.view.z.a(this.f1336b.f1333a, C0000R.string.msg_wrong_password, 1).show();
            return;
        }
        boolean unused = FileExplorerActivity.av = true;
        agVar.dismiss();
        this.f1336b.b(this.f1335a);
    }
}
