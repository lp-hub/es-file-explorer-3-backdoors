package com.estrongs.android.pop.view;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class av implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.pcs.v f1323a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ at f1324b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(at atVar, com.estrongs.android.ui.pcs.v vVar) {
        this.f1324b = atVar;
        this.f1323a = vVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String m;
        FexApplication fexApplication = FexApplication.f325a;
        m = this.f1324b.m(C0000R.string.pcs_normal_error_divecenormalized);
        com.estrongs.android.ui.view.z.a(fexApplication, m, 0).show();
        this.f1324b.a(this.f1323a);
    }
}
