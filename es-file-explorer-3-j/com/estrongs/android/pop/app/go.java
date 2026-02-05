package com.estrongs.android.pop.app;

import android.app.ProgressDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class go implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        ProgressDialog progressDialog;
        ProgressDialog progressDialog2;
        try {
            progressDialog = gn.f848a;
            if (progressDialog != null) {
                progressDialog2 = gn.f848a;
                progressDialog2.dismiss();
                ProgressDialog unused = gn.f848a = null;
                boolean unused2 = gn.f849b = false;
            }
        } catch (Exception e) {
        } finally {
            boolean unused3 = gn.f849b = false;
        }
    }
}
