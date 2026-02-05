package com.b.a.a;

import java.io.IOException;

/* loaded from: classes.dex */
public class u implements b.b.g {

    /* renamed from: a, reason: collision with root package name */
    private b.a.a.f f116a;

    /* renamed from: b, reason: collision with root package name */
    private i f117b;

    public u(b.a.a.f fVar, i iVar) {
        this.f116a = fVar;
        this.f117b = iVar;
    }

    @Override // b.b.g
    public b.a.a.a a(b.b.f fVar) {
        return a(fVar, null);
    }

    public synchronized b.a.a.a a(b.b.f fVar, b.b.a aVar) {
        s sVar;
        if (this.f116a == null) {
            throw new IOException("Session closed");
        }
        if (fVar == null) {
            throw new NullPointerException("handler is null");
        }
        sVar = new s(this.f116a.a(), fVar, aVar, this.f117b);
        sVar.a();
        return sVar;
    }

    @Override // b.a.a.a
    public void e() {
        b.a.a.f fVar = this.f116a;
        this.f116a = null;
        if (fVar != null) {
            fVar.e();
        }
    }
}
