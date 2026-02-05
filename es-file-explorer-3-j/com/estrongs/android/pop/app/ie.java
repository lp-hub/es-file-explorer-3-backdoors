package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.Intent;
import com.estrongs.android.pop.ftp.ESFtpShortcut;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ie implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ShowDialogActivity f899a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ie(ShowDialogActivity showDialogActivity) {
        this.f899a = showDialogActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent(this.f899a, (Class<?>) ESFtpShortcut.class);
            intent.putExtra("mode", 2);
            this.f899a.startActivity(intent);
        } catch (Exception e) {
        }
        dialogInterface.dismiss();
    }
}
