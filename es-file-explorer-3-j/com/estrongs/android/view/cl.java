package com.estrongs.android.view;

import android.content.Intent;
import android.view.View;
import android.widget.Button;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class cl implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ck f2816a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cl(ck ckVar) {
        this.f2816a = ckVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Button button;
        Button button2;
        Button button3;
        boolean z;
        String p;
        button = this.f2816a.ak;
        if (button.getText().toString().equals(this.f2816a.ad.getString(C0000R.string.ftp_server_start))) {
            z = this.f2816a.as;
            if (z) {
                this.f2816a.b(this.f2816a.m(C0000R.string.local_access_point_enabled));
            } else {
                ck ckVar = this.f2816a;
                p = this.f2816a.p();
                ckVar.b(p);
            }
            this.f2816a.c(true);
            return;
        }
        button2 = this.f2816a.ak;
        if (button2.getText().toString().equals(this.f2816a.ad.getString(C0000R.string.ftp_server_stop))) {
            this.f2816a.c(false);
            return;
        }
        button3 = this.f2816a.ak;
        if (button3.getText().toString().equals(this.f2816a.ad.getString(C0000R.string.ftp_server_start_wifi))) {
            Intent intent = new Intent("android.settings.WIFI_SETTINGS");
            intent.setFlags(268435456);
            this.f2816a.a(intent);
        }
    }
}
