package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ao implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PasswordPreferenceFragment f2450a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(PasswordPreferenceFragment passwordPreferenceFragment) {
        this.f2450a = passwordPreferenceFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
