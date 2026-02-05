package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cc implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f2345a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bt f2346b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(bt btVar, EditText editText) {
        this.f2346b = btVar;
        this.f2345a = editText;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String d;
        Context context;
        boolean a2;
        Context context2;
        boolean z;
        Context context3;
        String obj = this.f2345a.getText().toString();
        d = this.f2346b.d();
        if (obj.length() == 0 || d.length() == 0) {
            context = this.f2346b.f2333b;
            com.estrongs.android.ui.view.z.a(context, C0000R.string.pcs_register_num_pw_empty, 0).show();
            return;
        }
        a2 = this.f2346b.a(obj);
        if (!a2) {
            context3 = this.f2346b.f2333b;
            com.estrongs.android.ui.view.z.a(context3, C0000R.string.phone_format_error, 0).show();
            return;
        }
        if (d.length() < 6 || TextUtils.isDigitsOnly(d)) {
            context2 = this.f2346b.f2333b;
            com.estrongs.android.ui.view.z.a(context2, C0000R.string.pcs_password_format_error, 0).show();
            return;
        }
        this.f2346b.l = obj;
        this.f2346b.r();
        com.estrongs.android.util.a a3 = com.estrongs.android.util.a.a();
        if (a3 != null) {
            a3.a("Press_UPInfo_Confirm", "Press_UPInfo_Confirm");
            a3.b("UPInfo_Confirm_UV", "UPInfo_Confirm_UV");
            z = this.f2346b.n;
            String str = z ? "Next_Phone_Get" : "Next_Phone_No";
            a3.c(str, str);
        }
    }
}
