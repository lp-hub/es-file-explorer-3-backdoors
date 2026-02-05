package com.jcraft.jsch;

/* loaded from: classes.dex */
public abstract class UserAuth {

    /* renamed from: a, reason: collision with root package name */
    protected UserInfo f3351a;

    /* renamed from: b, reason: collision with root package name */
    protected Packet f3352b;
    protected Buffer c;
    protected String d;

    public boolean a(Session session) {
        this.f3351a = session.c();
        this.f3352b = session.h;
        this.c = this.f3352b.b();
        this.d = session.h();
        return true;
    }
}
