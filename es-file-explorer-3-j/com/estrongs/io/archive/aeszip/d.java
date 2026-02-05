package com.estrongs.io.archive.aeszip;

/* loaded from: classes.dex */
class d extends e {

    /* renamed from: a, reason: collision with root package name */
    de.a.a.a.a.b f3195a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f3196b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(a aVar, long j, long j2, de.a.a.a.a.b bVar) {
        super(aVar, j, j2);
        this.f3196b = aVar;
        this.f3195a = null;
        this.f3195a = bVar;
    }

    @Override // com.estrongs.io.archive.aeszip.e, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        this.f3195a.a(bArr, read);
        return read;
    }
}
