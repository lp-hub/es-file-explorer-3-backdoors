package com.estrongs.android.ui.view;

/* loaded from: classes.dex */
class af implements com.estrongs.fs.c.e {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ad f2599a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(ad adVar) {
        this.f2599a = adVar;
    }

    @Override // com.estrongs.fs.c.e
    public void a(byte[] bArr, int i, int i2) {
        if (this.f2599a.f2596a != null) {
            this.f2599a.f2596a.a(bArr, i, i2);
        }
        if (this.f2599a.f2597b != null) {
            this.f2599a.f2597b.a(bArr, i, i2);
        }
    }
}
