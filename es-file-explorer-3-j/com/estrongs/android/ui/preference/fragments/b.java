package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class b implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppPreferenceFragment f2458a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(AppPreferenceFragment appPreferenceFragment) {
        this.f2458a = appPreferenceFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
