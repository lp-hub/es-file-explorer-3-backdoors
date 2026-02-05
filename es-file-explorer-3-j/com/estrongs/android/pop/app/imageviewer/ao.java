package com.estrongs.android.pop.app.imageviewer;

import android.app.ProgressDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ao implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f946a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(an anVar) {
        this.f946a = anVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        MonitoredActivity monitoredActivity;
        ProgressDialog progressDialog;
        ProgressDialog progressDialog2;
        monitoredActivity = this.f946a.f944a;
        monitoredActivity.b(this.f946a);
        progressDialog = this.f946a.f945b;
        if (progressDialog.getWindow() != null) {
            progressDialog2 = this.f946a.f945b;
            progressDialog2.dismiss();
        }
    }
}
