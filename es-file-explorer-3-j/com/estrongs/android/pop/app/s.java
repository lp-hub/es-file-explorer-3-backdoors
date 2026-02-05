package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DialogInterface.OnCancelListener f1080a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ DownloaderActivity f1081b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(DownloaderActivity downloaderActivity, DialogInterface.OnCancelListener onCancelListener) {
        this.f1081b = downloaderActivity;
        this.f1080a = onCancelListener;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String str;
        String str2;
        if (i == 0) {
            DownloaderActivity downloaderActivity = this.f1081b;
            str2 = this.f1081b.f341a;
            downloaderActivity.a(str2);
        } else if (com.estrongs.android.util.aw.a((CharSequence) com.estrongs.android.pop.q.a(this.f1081b).ae())) {
            DownloaderActivity.a(this.f1081b, new t(this), this.f1080a);
        } else {
            DownloaderActivity downloaderActivity2 = this.f1081b;
            str = this.f1081b.f341a;
            DownloaderActivity.a((Activity) downloaderActivity2, str, true);
        }
        dialogInterface.dismiss();
    }
}
