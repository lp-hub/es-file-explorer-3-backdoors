package com.estrongs.android.ftp;

/* loaded from: classes.dex */
class f implements d {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESFtpService f314a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(ESFtpService eSFtpService) {
        this.f314a = eSFtpService;
    }

    @Override // com.estrongs.android.ftp.d
    public void a(int i, int i2) {
        this.f314a.f307a.sendMessage(this.f314a.f307a.obtainMessage(1, i, i2));
    }

    @Override // com.estrongs.android.ftp.d
    public void a(long j, long j2) {
        this.f314a.f307a.sendMessage(this.f314a.f307a.obtainMessage(2, (int) j, (int) j2));
    }
}
