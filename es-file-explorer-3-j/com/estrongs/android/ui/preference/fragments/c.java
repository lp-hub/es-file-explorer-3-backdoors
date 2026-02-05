package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppPreferenceFragment f2459a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(AppPreferenceFragment appPreferenceFragment) {
        this.f2459a = appPreferenceFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2459a.c();
        dialogInterface.dismiss();
    }
}
