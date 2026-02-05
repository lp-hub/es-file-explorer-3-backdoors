package com.estrongs.android.pop.utils;

import android.app.Activity;

/* loaded from: classes.dex */
final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1214a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ CharSequence f1215b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Activity activity, CharSequence charSequence) {
        this.f1214a = activity;
        this.f1215b = charSequence;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f1214a, this.f1215b, 1).show();
    }
}
