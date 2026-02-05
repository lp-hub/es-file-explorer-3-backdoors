package com.estrongs.android.pop.app;

import android.app.ProgressDialog;

/* loaded from: classes.dex */
class ix implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1047a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ iw f1048b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ix(iw iwVar, int i) {
        this.f1048b = iwVar;
        this.f1047a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        ProgressDialog progressDialog;
        ProgressDialog progressDialog2;
        long j;
        ProgressDialog progressDialog3;
        long j2;
        z = this.f1048b.f1046a.y;
        if (z) {
            if (this.f1047a == -15) {
                this.f1048b.f1046a.showDialog(4);
                return;
            } else {
                this.f1048b.f1046a.x = false;
                return;
            }
        }
        this.f1048b.f1046a.showDialog(5);
        progressDialog = this.f1048b.f1046a.v;
        if (progressDialog.getProgress() == 0) {
            progressDialog2 = this.f1048b.f1046a.v;
            j = this.f1048b.f1046a.f;
            progressDialog2.setMax((int) j);
            progressDialog3 = this.f1048b.f1046a.v;
            j2 = this.f1048b.f1046a.g;
            progressDialog3.incrementProgressBy((int) j2);
        }
    }
}
