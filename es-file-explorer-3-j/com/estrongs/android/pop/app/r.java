package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class r implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DownloaderActivity f1079a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(DownloaderActivity downloaderActivity) {
        this.f1079a = downloaderActivity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f1079a.finish();
    }
}
