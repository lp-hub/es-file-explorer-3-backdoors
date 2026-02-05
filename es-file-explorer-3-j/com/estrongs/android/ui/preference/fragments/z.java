package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DirectoryPreferenceFragment f2492a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(DirectoryPreferenceFragment directoryPreferenceFragment) {
        this.f2492a = directoryPreferenceFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2492a.b();
        dialogInterface.dismiss();
    }
}
