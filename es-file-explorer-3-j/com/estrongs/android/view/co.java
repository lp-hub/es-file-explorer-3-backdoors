package com.estrongs.android.view;

import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class co implements com.estrongs.android.ftp.m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ftp.k f2819a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ck f2820b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public co(ck ckVar, com.estrongs.android.ftp.k kVar) {
        this.f2820b = ckVar;
        this.f2819a = kVar;
    }

    @Override // com.estrongs.android.ftp.m
    public void a() {
        boolean z;
        String p;
        boolean z2 = false;
        try {
            com.estrongs.android.ftp.a b2 = this.f2819a.b();
            if (b2 != null && b2.i()) {
                int V = com.estrongs.android.pop.q.a(this.f2820b.ad).V();
                z2 = true;
                z = this.f2820b.as;
                if (z) {
                    this.f2820b.a(this.f2820b.m(C0000R.string.local_access_point_enabled), "ftp:/" + b2.g().toString() + ":" + V + "/");
                } else {
                    ck ckVar = this.f2820b;
                    p = this.f2820b.p();
                    ckVar.a(p, "ftp:/" + b2.g().toString() + ":" + V + "/");
                }
            }
            this.f2819a.b(this.f2820b.ad);
            if (com.estrongs.android.util.ai.a(this.f2820b.ad) == null) {
                if (z2) {
                    this.f2820b.c(false);
                }
                this.f2820b.o();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
