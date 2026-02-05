package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class fl implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f808a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fl(PopPreferenceActivity popPreferenceActivity) {
        this.f808a = popPreferenceActivity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f808a.e();
    }
}
