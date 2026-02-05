package com.baidu.mobstat;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f160a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f161b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(l lVar, Context context) {
        this.f161b = lVar;
        this.f160a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f161b.f153a = b.a().e(this.f160a);
        if (this.f161b.f153a) {
            return;
        }
        this.f161b.e(this.f160a);
    }
}
