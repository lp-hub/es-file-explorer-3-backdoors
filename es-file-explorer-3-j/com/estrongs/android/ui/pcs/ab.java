package com.estrongs.android.ui.pcs;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ab implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f2270a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(x xVar) {
        this.f2270a = xVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        EditText editText;
        boolean z2;
        com.estrongs.android.util.a a2;
        String obj = this.f2270a.l.getText().toString();
        String obj2 = this.f2270a.p.getText().toString();
        if (obj.length() == 0 || obj2.length() == 0) {
            com.estrongs.android.ui.view.z.a(this.f2270a.f, C0000R.string.pcs_register_num_pw_empty, 0).show();
            return;
        }
        if (!this.f2270a.c(obj)) {
            com.estrongs.android.ui.view.z.a(this.f2270a.f, C0000R.string.phone_format_error, 0).show();
            return;
        }
        if (obj2.length() < 6 || TextUtils.isDigitsOnly(obj2)) {
            com.estrongs.android.ui.view.z.a(this.f2270a.f, C0000R.string.pcs_password_format_error, 0).show();
            return;
        }
        z = this.f2270a.y;
        if (!z) {
            com.estrongs.android.ui.view.z.a(this.f2270a.f, C0000R.string.pcs_register_code_first, 0).show();
            return;
        }
        editText = this.f2270a.o;
        if (editText.getText().toString().length() == 0) {
            com.estrongs.android.ui.view.z.a(this.f2270a.f, C0000R.string.verifycode_input_error, 0).show();
            return;
        }
        z2 = this.f2270a.x;
        if (!z2 && !this.f2270a.E) {
            com.estrongs.android.ui.view.z.a(this.f2270a.f, C0000R.string.pcs_register_agreement_unchecked, 0).show();
            return;
        }
        this.f2270a.h();
        if (!this.f2270a.E || (a2 = com.estrongs.android.util.a.a()) == null) {
            return;
        }
        a2.a("Press_Verify_Confirm", "Press_Verify_Confirm");
        a2.b("Verify_Confirm_UV", "Verify_Confirm_UV");
    }
}
