package com.estrongs.fs.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.impl.b.c f2997a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String str, com.estrongs.fs.impl.b.c cVar) {
        super(str);
        this.f2997a = cVar;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public String getName() {
        return this.f2997a.f().a();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        return this.f2997a.f().d();
    }
}
