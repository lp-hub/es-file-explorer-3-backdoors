package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class as implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileChooserActivity f463a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(FileChooserActivity fileChooserActivity) {
        this.f463a = fileChooserActivity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f463a.finish();
    }
}
