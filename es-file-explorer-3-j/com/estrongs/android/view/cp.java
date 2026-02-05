package com.estrongs.android.view;

import android.content.Intent;
import com.estrongs.android.ftp.ESFtpService;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cp implements com.estrongs.android.ftp.m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ftp.k f2821a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2822b;
    final /* synthetic */ String c;
    final /* synthetic */ int d;
    final /* synthetic */ String e;
    final /* synthetic */ ck f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cp(ck ckVar, com.estrongs.android.ftp.k kVar, String str, String str2, int i, String str3) {
        this.f = ckVar;
        this.f2821a = kVar;
        this.f2822b = str;
        this.c = str2;
        this.d = i;
        this.e = str3;
    }

    @Override // com.estrongs.android.ftp.m
    public void a() {
        boolean z;
        String p;
        boolean z2;
        String p2;
        try {
            com.estrongs.android.ftp.a a2 = this.f2821a.a(this.f2822b, this.c, this.d, this.e);
            int d = this.f2821a.d();
            if (d == 0) {
                z2 = this.f.as;
                if (z2) {
                    this.f.a(this.f.m(C0000R.string.local_access_point_enabled), "ftp:/" + a2.g().toString() + ":" + this.d + "/");
                } else {
                    ck ckVar = this.f;
                    p2 = this.f.p();
                    ckVar.a(p2, "ftp:/" + a2.g().toString() + ":" + this.d + "/");
                }
                this.f.ad.startService(new Intent(this.f.ad, (Class<?>) ESFtpService.class));
            } else {
                String str = null;
                if (d == 1) {
                    str = this.f.m(C0000R.string.ftp_server_start_error);
                } else if (d == 2) {
                    str = this.f.m(C0000R.string.wifi_network_error);
                }
                com.estrongs.android.ui.view.z.a(this.f.ad, str, 0).show();
                z = this.f.as;
                if (z) {
                    this.f.b(this.f.m(C0000R.string.local_access_point_enabled));
                } else {
                    ck ckVar2 = this.f;
                    p = this.f.p();
                    ckVar2.b(p);
                }
            }
            this.f2821a.b(this.f.ad);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
