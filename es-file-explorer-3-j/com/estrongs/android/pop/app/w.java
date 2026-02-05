package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.b.z f1086a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f1087b;
    final /* synthetic */ Activity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(com.estrongs.fs.b.z zVar, boolean z, Activity activity) {
        this.f1086a = zVar;
        this.f1087b = z;
        this.c = activity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f1086a.getTaskStatus() != 4) {
            this.f1086a.requsestPause();
        }
        if (this.f1087b) {
            this.c.finish();
        }
    }
}
