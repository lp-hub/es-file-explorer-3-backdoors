package com.estrongs.android.ui.preference;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.ag;

/* loaded from: classes.dex */
class f implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FtpServerPreference f2417a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(FtpServerPreference ftpServerPreference) {
        this.f2417a = ftpServerPreference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ag agVar = (ag) dialogInterface;
        String obj = ((EditText) agVar.findViewById(C0000R.id.pincode_username)).getText().toString();
        String obj2 = ((EditText) agVar.findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        com.estrongs.android.pop.q.a(this.f2417a).e(obj, obj2);
        try {
            com.estrongs.android.ftp.k a2 = com.estrongs.android.ftp.k.a();
            a2.a(this.f2417a, new g(this, a2, obj, obj2));
        } catch (Exception e) {
        }
        if (obj == null || obj.length() == 0) {
            this.f2417a.c.setSummary(((Object) this.f2417a.getText(C0000R.string.preference_ftpsvr_curr_user)) + ((String) this.f2417a.getText(C0000R.string.input_anonymous)));
        } else {
            this.f2417a.c.setSummary(((Object) this.f2417a.getText(C0000R.string.preference_ftpsvr_curr_user)) + obj);
        }
        dialogInterface.dismiss();
    }
}
