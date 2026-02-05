package com.estrongs.android.ui.preference;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class o implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FtpServerPreference f2504a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(FtpServerPreference ftpServerPreference) {
        this.f2504a = ftpServerPreference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2504a.b();
        dialogInterface.dismiss();
    }
}
