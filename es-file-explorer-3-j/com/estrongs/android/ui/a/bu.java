package com.estrongs.android.ui.a;

import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class bu implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f1539a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bu(bt btVar) {
        this.f1539a = btVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f1539a.f1537a, C0000R.string.super_user_error, 1).show();
    }
}
