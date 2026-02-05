package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bd implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bb f2310a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bd(bb bbVar) {
        this.f2310a = bbVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        EditText editText2;
        Context context;
        boolean b2;
        Context context2;
        TextView textView;
        Context context3;
        ProgressBar progressBar;
        EditText editText3;
        EditText editText4;
        boolean z;
        com.estrongs.android.util.a a2;
        Context context4;
        editText = this.f2310a.i;
        String obj = editText.getText().toString();
        editText2 = this.f2310a.m;
        String obj2 = editText2.getText().toString();
        if (obj.length() == 0 || obj2.length() == 0) {
            context = this.f2310a.c;
            com.estrongs.android.ui.view.z.a(context, C0000R.string.pcs_register_num_pw_empty, 0).show();
            return;
        }
        b2 = this.f2310a.b(obj);
        if (!b2) {
            context4 = this.f2310a.c;
            com.estrongs.android.ui.view.z.a(context4, C0000R.string.phone_format_error, 0).show();
            return;
        }
        if (obj2.length() < 6 || TextUtils.isDigitsOnly(obj2)) {
            context2 = this.f2310a.c;
            com.estrongs.android.ui.view.z.a(context2, C0000R.string.pcs_password_format_error, 0).show();
            return;
        }
        this.f2310a.k();
        textView = this.f2310a.n;
        StringBuilder sb = new StringBuilder();
        context3 = this.f2310a.c;
        textView.setText(sb.append(context3.getString(C0000R.string.pcs_register_number_prefix)).append(obj).toString());
        progressBar = this.f2310a.k;
        progressBar.setVisibility(0);
        view.setEnabled(false);
        editText3 = this.f2310a.i;
        editText3.setEnabled(false);
        editText4 = this.f2310a.m;
        editText4.setEnabled(false);
        z = this.f2310a.D;
        if (!z || (a2 = com.estrongs.android.util.a.a()) == null) {
            return;
        }
        a2.a("Press_UPInfo_Confirm", "Press_UPInfo_Confirm");
        a2.b("UPInfo_Confirm_UV", "UPInfo_Confirm_UV");
    }
}
