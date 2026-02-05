package com.estrongs.a.a;

/* loaded from: classes.dex */
public class e extends c {

    /* renamed from: a, reason: collision with root package name */
    public String f191a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f192b = false;
    public com.estrongs.fs.g c;
    public com.estrongs.fs.g d;

    public e() {
        this.g = 1;
        this.h = 1;
    }

    @Override // com.estrongs.a.a.c
    public void a(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return;
        }
        if (objArr[0] instanceof String) {
            this.f191a = (String) objArr[0];
        }
        if (objArr.length > 1 && objArr[1] != null && (objArr[1] instanceof Boolean)) {
            this.f192b = ((Boolean) objArr[1]).booleanValue();
        }
        if (objArr.length > 3) {
            if (objArr[2] instanceof com.estrongs.fs.g) {
                this.c = (com.estrongs.fs.g) objArr[2];
            }
            if (objArr[3] instanceof com.estrongs.fs.g) {
                this.d = (com.estrongs.fs.g) objArr[3];
            }
        }
    }
}
