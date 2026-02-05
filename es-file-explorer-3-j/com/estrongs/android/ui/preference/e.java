package com.estrongs.android.ui.preference;

/* loaded from: classes.dex */
class e implements com.estrongs.android.ftp.m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ftp.k f2410a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2411b;
    final /* synthetic */ d c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, com.estrongs.android.ftp.k kVar, String str) {
        this.c = dVar;
        this.f2410a = kVar;
        this.f2411b = str;
    }

    @Override // com.estrongs.android.ftp.m
    public void a() {
        try {
            this.f2410a.a(this.f2411b);
            this.f2410a.b(this.c.f2409a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
