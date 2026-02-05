package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class fd implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f798a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fd(PopPreferenceActivity popPreferenceActivity) {
        this.f798a = popPreferenceActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f798a.d();
        dialogInterface.dismiss();
    }
}
