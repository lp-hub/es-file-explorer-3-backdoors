package com.estrongs.a.a;

/* loaded from: classes.dex */
public class g extends c {

    /* renamed from: a, reason: collision with root package name */
    public com.estrongs.fs.g f195a;

    public g() {
        this.g = 3;
        this.h = 6;
    }

    @Override // com.estrongs.a.a.c
    public void a(Object... objArr) {
        if (objArr == null || objArr.length <= 0 || !(objArr[0] instanceof com.estrongs.fs.g)) {
            return;
        }
        this.f195a = (com.estrongs.fs.g) objArr[0];
    }
}
