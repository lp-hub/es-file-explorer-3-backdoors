package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ProgressBar;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bf implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bb f2312a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bf(bb bbVar) {
        this.f2312a = bbVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        EditText editText2;
        Context context;
        boolean b2;
        Context context2;
        boolean z;
        EditText editText3;
        boolean z2;
        ProgressBar progressBar;
        boolean z3;
        com.estrongs.android.util.a a2;
        boolean z4;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        editText = this.f2312a.i;
        String obj = editText.getText().toString();
        editText2 = this.f2312a.m;
        String obj2 = editText2.getText().toString();
        if (obj.length() == 0 || obj2.length() == 0) {
            context = this.f2312a.c;
            com.estrongs.android.ui.view.z.a(context, C0000R.string.pcs_register_num_pw_empty, 0).show();
            return;
        }
        b2 = this.f2312a.b(obj);
        if (!b2) {
            context6 = this.f2312a.c;
            com.estrongs.android.ui.view.z.a(context6, C0000R.string.phone_format_error, 0).show();
            return;
        }
        if (obj2.length() < 6 || TextUtils.isDigitsOnly(obj2)) {
            context2 = this.f2312a.c;
            com.estrongs.android.ui.view.z.a(context2, C0000R.string.pcs_password_format_error, 0).show();
            return;
        }
        z = this.f2312a.w;
        if (!z) {
            context5 = this.f2312a.c;
            com.estrongs.android.ui.view.z.a(context5, C0000R.string.pcs_register_code_first, 0).show();
            return;
        }
        editText3 = this.f2312a.l;
        if (editText3.getText().toString().length() == 0) {
            context4 = this.f2312a.c;
            com.estrongs.android.ui.view.z.a(context4, C0000R.string.verifycode_input_error, 0).show();
            return;
        }
        z2 = this.f2312a.v;
        if (!z2) {
            z4 = this.f2312a.D;
            if (!z4) {
                context3 = this.f2312a.c;
                com.estrongs.android.ui.view.z.a(context3, C0000R.string.pcs_register_agreement_unchecked, 0).show();
                return;
            }
        }
        this.f2312a.l();
        view.setEnabled(false);
        progressBar = this.f2312a.t;
        progressBar.setVisibility(0);
        z3 = this.f2312a.D;
        if (!z3 || (a2 = com.estrongs.android.util.a.a()) == null) {
            return;
        }
        a2.a("Press_Verify_Confirm", "Press_Verify_Confirm");
        a2.b("Verify_Confirm_UV", "Verify_Confirm_UV");
    }
}
