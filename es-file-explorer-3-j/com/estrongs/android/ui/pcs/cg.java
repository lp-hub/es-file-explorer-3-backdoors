package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cg implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f2350a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bt f2351b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cg(bt btVar, EditText editText) {
        this.f2351b = btVar;
        this.f2350a = editText;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        String d;
        Context context;
        boolean a2;
        Context context2;
        Context context3;
        Context context4;
        str = this.f2351b.l;
        d = this.f2351b.d();
        if (str.length() == 0 || d.length() == 0) {
            context = this.f2351b.f2333b;
            com.estrongs.android.ui.view.z.a(context, C0000R.string.pcs_register_num_pw_empty, 0).show();
            return;
        }
        a2 = this.f2351b.a(str);
        if (!a2) {
            context4 = this.f2351b.f2333b;
            com.estrongs.android.ui.view.z.a(context4, C0000R.string.phone_format_error, 0).show();
            return;
        }
        if (d.length() < 6 || TextUtils.isDigitsOnly(d)) {
            context2 = this.f2351b.f2333b;
            com.estrongs.android.ui.view.z.a(context2, C0000R.string.pcs_password_format_error, 0).show();
        } else {
            if (this.f2350a.getText().toString().length() == 0) {
                context3 = this.f2351b.f2333b;
                com.estrongs.android.ui.view.z.a(context3, C0000R.string.verifycode_input_error, 0).show();
                return;
            }
            this.f2351b.d(this.f2350a.getText().toString());
            com.estrongs.android.util.a a3 = com.estrongs.android.util.a.a();
            if (a3 != null) {
                a3.a("Press_Verify_Confirm", "Press_Verify_Confirm");
                a3.b("Verify_Confirm_UV", "Verify_Confirm_UV");
            }
        }
    }
}
