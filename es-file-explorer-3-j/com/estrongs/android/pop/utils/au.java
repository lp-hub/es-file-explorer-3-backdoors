package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.DialogInterface;

/* loaded from: classes.dex */
final class au implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Boolean[] f1204a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Activity f1205b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(Boolean[] boolArr, Activity activity) {
        this.f1204a = boolArr;
        this.f1205b = activity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f1204a[0].booleanValue()) {
            this.f1205b.finish();
        }
    }
}
