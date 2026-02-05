package com.estrongs.android.ui.preference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements com.estrongs.android.ftp.m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ftp.k f2496a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FtpServerPreference f2497b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(FtpServerPreference ftpServerPreference, com.estrongs.android.ftp.k kVar) {
        this.f2497b = ftpServerPreference;
        this.f2496a = kVar;
    }

    @Override // com.estrongs.android.ftp.m
    public void a() {
        try {
            com.estrongs.android.ftp.a b2 = this.f2496a.b();
            if (b2 != null && b2.i()) {
                com.estrongs.android.pop.q.a(this.f2497b).V();
            }
            this.f2496a.b(this.f2497b);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
