package com.estrongs.android.ui.preference;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class p implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FtpServerPreference f2505a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(FtpServerPreference ftpServerPreference) {
        this.f2505a = ftpServerPreference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
