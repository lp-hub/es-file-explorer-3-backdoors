package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class fe implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f799a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fe(PopPreferenceActivity popPreferenceActivity) {
        this.f799a = popPreferenceActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
