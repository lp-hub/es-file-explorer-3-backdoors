package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class fk implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f806a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f807b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fk(PopPreferenceActivity popPreferenceActivity, int i) {
        this.f807b = popPreferenceActivity;
        this.f806a = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String obj = ((EditText) ((com.estrongs.android.ui.b.ag) dialogInterface).findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        String J = com.estrongs.android.pop.q.a(this.f807b).J();
        if (obj == null || obj.length() == 0 || !obj.equals(J)) {
            com.estrongs.android.ui.view.z.a(this.f807b, C0000R.string.msg_wrong_password, 1).show();
        } else {
            if (this.f806a == 109) {
                this.f807b.g.setChecked(false);
            } else if (this.f806a == 112) {
                this.f807b.h.setChecked(false);
            } else if (this.f806a == 114) {
                this.f807b.i.setChecked(false);
            }
            if (!this.f807b.g.isChecked() && !this.f807b.h.isChecked() && !this.f807b.i.isChecked()) {
                this.f807b.r.setEnabled(false);
            }
        }
        dialogInterface.dismiss();
    }
}
