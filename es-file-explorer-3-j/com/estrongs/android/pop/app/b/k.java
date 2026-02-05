package com.estrongs.android.pop.app.b;

/* loaded from: classes.dex */
public class k implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    private long f492a;

    /* renamed from: b, reason: collision with root package name */
    private long f493b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(long j, long j2) {
        this.f492a = j;
        this.f493b = j2;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        if (gVar == null || gVar.getFileType().a()) {
            return false;
        }
        long lastModified = gVar.lastModified();
        boolean z = this.f492a > -1 ? lastModified >= this.f492a : true;
        return this.f493b > -1 ? z && lastModified <= this.f493b : z;
    }
}
