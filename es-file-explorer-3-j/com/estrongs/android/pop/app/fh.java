package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class fh implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f802a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f803b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fh(PopPreferenceActivity popPreferenceActivity, int i) {
        this.f803b = popPreferenceActivity;
        this.f802a = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.b.ag agVar = (com.estrongs.android.ui.b.ag) dialogInterface;
        String obj = ((EditText) agVar.findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        String obj2 = ((EditText) agVar.findViewById(C0000R.id.pincode_confirm_passwd)).getText().toString();
        if (obj == null || obj.length() == 0) {
            com.estrongs.android.ui.view.z.a(this.f803b, C0000R.string.net_passwd_can_not_null, 1).show();
        } else if (obj.equals(obj2)) {
            com.estrongs.android.pop.q.a(this.f803b).n(obj);
            if (this.f802a == 108) {
                this.f803b.g.setChecked(true);
            } else if (this.f802a == 111) {
                this.f803b.h.setChecked(true);
            } else if (this.f802a == 113) {
                this.f803b.i.setChecked(true);
            }
            this.f803b.r.setEnabled(true);
        } else {
            com.estrongs.android.ui.view.z.a(this.f803b, C0000R.string.net_passwd_not_confirm, 1).show();
        }
        dialogInterface.dismiss();
    }
}
