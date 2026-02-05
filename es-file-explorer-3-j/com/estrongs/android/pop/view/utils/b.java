package com.estrongs.android.pop.view.utils;

import android.app.Activity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1437a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1438b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Activity activity, String str) {
        this.f1437a = activity;
        this.f1438b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppRunner.c(this.f1437a, this.f1438b, this.f1438b);
    }
}
