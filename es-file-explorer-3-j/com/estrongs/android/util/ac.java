package com.estrongs.android.util;

import android.content.DialogInterface;
import android.webkit.SslErrorHandler;

/* loaded from: classes.dex */
final class ac implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ SslErrorHandler f2661a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(SslErrorHandler sslErrorHandler) {
        this.f2661a = sslErrorHandler;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2661a.proceed();
        dialogInterface.dismiss();
    }
}
