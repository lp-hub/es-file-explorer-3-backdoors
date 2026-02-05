package com.estrongs.a.a;

import com.estrongs.android.util.TypedMap;

/* loaded from: classes.dex */
public class f extends c {

    /* renamed from: a, reason: collision with root package name */
    public String f193a;

    /* renamed from: b, reason: collision with root package name */
    public TypedMap f194b;

    public f() {
        this.h = 4;
    }

    @Override // com.estrongs.a.a.c
    public void a(Object... objArr) {
        if (objArr == null || objArr.length <= 0 || !(objArr[0] instanceof String)) {
            return;
        }
        this.f193a = (String) objArr[0];
    }
}
