package com.estrongs.android.pop.ftp;

import android.content.Intent;
import com.estrongs.android.ftp.ESFtpService;
import com.estrongs.android.ftp.k;
import com.estrongs.android.ftp.m;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.q;
import com.estrongs.android.ui.view.z;

/* loaded from: classes.dex */
class a implements m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1147a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ k f1148b;
    final /* synthetic */ ESFtpShortcut c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ESFtpShortcut eSFtpShortcut, int i, k kVar) {
        this.c = eSFtpShortcut;
        this.f1147a = i;
        this.f1148b = kVar;
    }

    @Override // com.estrongs.android.ftp.m
    public void a() {
        try {
            if (this.f1147a == 1) {
                String T = q.a(this.c).T();
                int V = q.a(this.c).V();
                String U = q.a(this.c).U();
                this.f1148b.a(T, q.a(this.c).S(), V, U);
                int d = this.f1148b.d();
                if (d != 0) {
                    String str = null;
                    if (d == 1) {
                        str = this.c.getString(C0000R.string.ftp_server_start_error);
                    } else if (d == 2) {
                        str = this.c.getString(C0000R.string.wifi_network_error);
                    }
                    z.a(this.c, str, 0).show();
                    return;
                }
                if (this.f1148b.f322a.intValue() == 1) {
                    this.c.startService(new Intent(this.c, (Class<?>) ESFtpService.class));
                }
            } else if (this.f1147a == 2) {
                this.f1148b.c();
            } else if (this.f1147a == 3) {
                this.f1148b.e();
            } else if (this.f1147a == 4) {
                this.f1148b.f();
            }
            this.f1148b.b(this.c);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
