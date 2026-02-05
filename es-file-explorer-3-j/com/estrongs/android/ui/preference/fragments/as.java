package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class as implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PasswordPreferenceFragment f2455a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(PasswordPreferenceFragment passwordPreferenceFragment) {
        this.f2455a = passwordPreferenceFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
