package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class fj implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f805a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fj(PopPreferenceActivity popPreferenceActivity) {
        this.f805a = popPreferenceActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
