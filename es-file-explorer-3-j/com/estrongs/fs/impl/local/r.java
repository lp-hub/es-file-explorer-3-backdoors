package com.estrongs.fs.impl.local;

/* loaded from: classes.dex */
public class r extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    private long f3116a;

    /* renamed from: b, reason: collision with root package name */
    private long f3117b;
    private String c;

    public r(String str, boolean z) {
        super(str);
        this.isLink = z;
    }

    public String a() {
        return this.c;
    }

    public void a(long j) {
        this.f3116a = j;
    }

    public void a(String str) {
        this.c = str;
    }

    public void b(long j) {
        this.f3117b = j;
    }

    @Override // com.estrongs.fs.a
    protected com.estrongs.fs.l doGetFileType() {
        return null;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        return this.f3116a;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        return this.f3117b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public void setFileType(com.estrongs.fs.l lVar) {
        this.type = lVar;
    }
}
