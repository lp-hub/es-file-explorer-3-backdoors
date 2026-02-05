package com.estrongs.android.pop.app.diskusage;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f677a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(e eVar) {
        this.f677a = eVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        boolean z;
        boolean z2;
        z = this.f677a.aB;
        if (z) {
            z2 = this.f677a.ak;
            if (z2) {
                return;
            }
        }
        this.f677a.aB = false;
        this.f677a.al();
        this.f677a.ar = null;
    }
}
