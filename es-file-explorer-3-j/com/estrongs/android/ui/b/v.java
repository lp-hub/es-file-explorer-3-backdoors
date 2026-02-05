package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.Context;

/* loaded from: classes.dex */
class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1883a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ u f1884b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(u uVar, String str) {
        this.f1884b = uVar;
        this.f1883a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        context = this.f1884b.f1882a.f1881b;
        new bz((Activity) context, this.f1883a, true).a();
    }
}
