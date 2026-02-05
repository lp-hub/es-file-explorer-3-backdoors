package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DialogInterface.OnDismissListener f1890a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ y f1891b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(y yVar, DialogInterface.OnDismissListener onDismissListener) {
        this.f1891b = yVar;
        this.f1890a = onDismissListener;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f1891b.f1889b != null && this.f1891b.f1889b.getTaskStatus() == 2) {
            this.f1891b.k = true;
            this.f1891b.f1889b.requestStop();
        }
        if (this.f1890a != null) {
            this.f1890a.onDismiss(dialogInterface);
        }
    }
}
