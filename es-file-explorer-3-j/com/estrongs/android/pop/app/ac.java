package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ac implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESFileSharingActivity f441a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(ESFileSharingActivity eSFileSharingActivity) {
        this.f441a = eSFileSharingActivity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f441a.finish();
    }
}
