package com.estrongs.android.util;

import android.content.DialogInterface;
import android.webkit.SslErrorHandler;

/* loaded from: classes.dex */
final class ad implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ SslErrorHandler f2662a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(SslErrorHandler sslErrorHandler) {
        this.f2662a = sslErrorHandler;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2662a.cancel();
        dialogInterface.dismiss();
    }
}
