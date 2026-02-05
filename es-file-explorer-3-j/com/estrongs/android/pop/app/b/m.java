package com.estrongs.android.pop.app.b;

/* loaded from: classes.dex */
public class m implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    private String f495a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f496b = true;

    public m(String str) {
        this.f495a = str.trim();
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return this.f496b ? gVar.getName().toLowerCase().contains(this.f495a.toLowerCase()) : gVar.getName().contains(this.f495a);
    }
}
