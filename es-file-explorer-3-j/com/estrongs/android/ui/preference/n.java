package com.estrongs.android.ui.preference;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class n implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FtpServerPreference f2503a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(FtpServerPreference ftpServerPreference) {
        this.f2503a = ftpServerPreference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
