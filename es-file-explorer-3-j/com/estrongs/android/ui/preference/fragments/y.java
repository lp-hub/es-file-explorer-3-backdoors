package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class y implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DirectoryPreferenceFragment f2491a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(DirectoryPreferenceFragment directoryPreferenceFragment) {
        this.f2491a = directoryPreferenceFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
