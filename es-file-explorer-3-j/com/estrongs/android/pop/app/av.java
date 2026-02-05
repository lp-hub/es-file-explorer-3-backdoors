package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class av implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileChooserActivity f466a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(FileChooserActivity fileChooserActivity) {
        this.f466a = fileChooserActivity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f466a.f346b) {
            return;
        }
        this.f466a.finish();
    }
}
