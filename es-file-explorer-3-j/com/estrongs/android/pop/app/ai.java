package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class ai implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f448a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(ag agVar) {
        this.f448a = agVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String obj = this.f448a.f446a.e.getText().toString();
        String obj2 = this.f448a.f446a.f.getText().toString();
        if (obj == null || obj.length() == 0 || obj2 == null || obj2.length() == 0) {
            com.estrongs.android.ui.view.z.a(this.f448a.f446a, C0000R.string.es_net_use_customized_ap_empty, 0).show();
            return;
        }
        if (obj2.length() < 8) {
            com.estrongs.android.ui.view.z.a(this.f448a.f446a, C0000R.string.credentials_password_too_short, 0).show();
            return;
        }
        if (obj.length() > 32) {
            com.estrongs.android.ui.view.z.a(this.f448a.f446a, C0000R.string.es_net_use_customized_ap_too_long, 0).show();
            return;
        }
        com.estrongs.android.pop.q.a(this.f448a.f446a).v(obj);
        com.estrongs.android.pop.q.a(this.f448a.f446a).w(obj2);
        com.estrongs.android.pop.q.a(this.f448a.f446a).m(true);
        dialogInterface.dismiss();
    }
}
