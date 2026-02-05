package com.estrongs.android.pop.app.b;

/* loaded from: classes.dex */
public class o implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    private long f499a;

    /* renamed from: b, reason: collision with root package name */
    private long f500b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(long j, long j2) {
        this.f499a = j;
        this.f500b = j2;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        if (gVar == null || gVar.getFileType().a()) {
            return false;
        }
        long length = gVar.length();
        boolean z = this.f499a > -1 ? length >= this.f499a : true;
        return this.f500b > -1 ? z && length <= this.f500b : z;
    }
}
