package com.baidu.mobstat;

import android.content.Context;

/* loaded from: classes.dex */
class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f157a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(m mVar) {
        this.f157a = mVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        l lVar = this.f157a.f156b;
        Context context = this.f157a.f155a;
        z = this.f157a.f156b.d;
        lVar.a(context, z);
    }
}
