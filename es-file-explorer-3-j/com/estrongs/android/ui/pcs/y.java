package com.estrongs.android.ui.pcs;

import android.text.TextUtils;
import android.view.View;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class y implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f2387a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x xVar) {
        this.f2387a = xVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.util.a a2;
        String obj = this.f2387a.l.getText().toString();
        String obj2 = this.f2387a.p.getText().toString();
        if (obj.length() == 0 || obj2.length() == 0) {
            com.estrongs.android.ui.view.z.a(this.f2387a.f, C0000R.string.pcs_register_num_pw_empty, 0).show();
            return;
        }
        if (!this.f2387a.c(obj)) {
            com.estrongs.android.ui.view.z.a(this.f2387a.f, C0000R.string.phone_format_error, 0).show();
            return;
        }
        if (obj2.length() < 6 || TextUtils.isDigitsOnly(obj2)) {
            com.estrongs.android.ui.view.z.a(this.f2387a.f, C0000R.string.pcs_password_format_error, 0).show();
            return;
        }
        this.f2387a.g();
        this.f2387a.q.setText(this.f2387a.f.getString(C0000R.string.pcs_register_number_prefix) + obj);
        this.f2387a.n.setVisibility(0);
        view.setEnabled(false);
        this.f2387a.l.setEnabled(false);
        this.f2387a.p.setEnabled(false);
        if (!this.f2387a.E || (a2 = com.estrongs.android.util.a.a()) == null) {
            return;
        }
        a2.a("Press_UPInfo_Confirm", "Press_UPInfo_Confirm");
        a2.b("UPInfo_Confirm_UV", "UPInfo_Confirm_UV");
    }
}
