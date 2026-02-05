package com.estrongs.android.pop.view.utils;

import android.app.Activity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1446a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1447b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Activity activity, String str) {
        this.f1446a = activity;
        this.f1447b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppRunner.s(this.f1446a, this.f1447b);
    }
}
