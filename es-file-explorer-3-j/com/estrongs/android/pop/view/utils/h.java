package com.estrongs.android.pop.view.utils;

import android.app.Activity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1448a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1449b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Activity activity, String str) {
        this.f1448a = activity;
        this.f1449b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppRunner.s(this.f1448a, this.f1449b);
    }
}
