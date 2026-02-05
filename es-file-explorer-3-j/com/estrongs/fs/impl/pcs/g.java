package com.estrongs.fs.impl.pcs;

import android.widget.Toast;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;

/* loaded from: classes.dex */
class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f3168a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
        this.f3168a = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Toast.makeText(FexApplication.a(), FexApplication.a().getString(C0000R.string.pcs_relogin_notify), 0).show();
        } catch (Exception e) {
        }
    }
}
