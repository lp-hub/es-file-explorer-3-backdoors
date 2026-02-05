package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class ff implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f800a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ff(PopPreferenceActivity popPreferenceActivity) {
        this.f800a = popPreferenceActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.b.ag agVar = (com.estrongs.android.ui.b.ag) dialogInterface;
        String obj = ((EditText) agVar.findViewById(C0000R.id.pincode_old_passwd)).getText().toString();
        String obj2 = ((EditText) agVar.findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        if (obj2 == null) {
            obj2 = new String("");
        }
        String obj3 = ((EditText) agVar.findViewById(C0000R.id.pincode_confirm_passwd)).getText().toString();
        if (obj3 == null) {
            obj3 = new String("");
        }
        String J = com.estrongs.android.pop.q.a(this.f800a).J();
        if (!obj2.equals(obj3)) {
            com.estrongs.android.ui.view.z.a(this.f800a, C0000R.string.net_passwd_not_confirm, 1).show();
            dialogInterface.dismiss();
            return;
        }
        if (!obj.equals(J)) {
            com.estrongs.android.ui.view.z.a(this.f800a, C0000R.string.msg_wrong_password, 1).show();
            dialogInterface.dismiss();
            return;
        }
        if (obj2.length() > 0) {
            com.estrongs.android.pop.q.a(this.f800a).n(obj2);
            com.estrongs.android.ui.view.z.a(this.f800a, C0000R.string.net_passwd_changed, 1).show();
        } else {
            com.estrongs.android.pop.q.a(this.f800a).n(obj2);
            this.f800a.g.setChecked(false);
            this.f800a.h.setChecked(false);
            this.f800a.i.setChecked(false);
            this.f800a.r.setEnabled(false);
            com.estrongs.android.ui.view.z.a(this.f800a, C0000R.string.passwd_stop_protect, 1).show();
        }
        dialogInterface.dismiss();
    }
}
