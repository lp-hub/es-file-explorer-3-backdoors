package com.estrongs.a.a;

/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: a, reason: collision with root package name */
    public String f189a = null;

    /* renamed from: b, reason: collision with root package name */
    public String f190b = null;
    public String c = null;
    public boolean d = false;

    public b() {
        this.h = 5;
    }

    @Override // com.estrongs.a.a.c
    public void a(Object... objArr) {
        if (objArr == null || objArr.length <= 0 || !(objArr[0] instanceof String)) {
            return;
        }
        this.f189a = (String) objArr[0];
    }
}
