package com.estrongs.android.widget;

import android.app.Activity;

/* loaded from: classes.dex */
class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2925a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ j f2926b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(j jVar, String str) {
        this.f2926b = jVar;
        this.f2925a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        activity = this.f2926b.f2924b.r;
        com.estrongs.android.ui.view.z.a(activity, this.f2925a, 0).show();
    }
}
