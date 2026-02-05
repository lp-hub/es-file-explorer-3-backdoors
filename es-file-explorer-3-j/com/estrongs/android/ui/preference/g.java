package com.estrongs.android.ui.preference;

/* loaded from: classes.dex */
class g implements com.estrongs.android.ftp.m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ftp.k f2493a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2494b;
    final /* synthetic */ String c;
    final /* synthetic */ f d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar, com.estrongs.android.ftp.k kVar, String str, String str2) {
        this.d = fVar;
        this.f2493a = kVar;
        this.f2494b = str;
        this.c = str2;
    }

    @Override // com.estrongs.android.ftp.m
    public void a() {
        try {
            this.f2493a.a(this.f2494b, this.c);
            this.f2493a.b(this.d.f2417a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
