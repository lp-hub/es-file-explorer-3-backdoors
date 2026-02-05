package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class au implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileChooserActivity f465a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(FileChooserActivity fileChooserActivity) {
        this.f465a = fileChooserActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.b.ag agVar = (com.estrongs.android.ui.b.ag) dialogInterface;
        String obj = ((EditText) agVar.findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        String J = com.estrongs.android.pop.q.a(this.f465a).J();
        if (obj == null || obj.length() == 0 || !obj.equals(J)) {
            com.estrongs.android.ui.view.z.a(this.f465a, C0000R.string.msg_wrong_password, 1).show();
            return;
        }
        this.f465a.f346b = true;
        this.f465a.f345a.c(true);
        agVar.dismiss();
    }
}
