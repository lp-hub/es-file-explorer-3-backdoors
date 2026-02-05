package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppCheckUpdateList f705a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(AppCheckUpdateList appCheckUpdateList) {
        this.f705a = appCheckUpdateList;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f705a.b();
    }
}
