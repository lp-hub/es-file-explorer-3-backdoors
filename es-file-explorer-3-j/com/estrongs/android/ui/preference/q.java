package com.estrongs.android.ui.preference;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class q implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ListPreference f2506a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(ListPreference listPreference) {
        this.f2506a = listPreference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2506a.e = i;
        this.f2506a.onClick(dialogInterface, -1);
        dialogInterface.dismiss();
    }
}
