package com.estrongs.android.ui.b;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
class di implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1736a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dg f1737b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public di(dg dgVar, com.estrongs.fs.g gVar) {
        this.f1737b = dgVar;
        this.f1736a = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ESActivity eSActivity;
        ESActivity eSActivity2;
        if (this.f1736a == null) {
            if (this.f1737b.f1733a.isShowing()) {
                this.f1737b.f1733a.dismiss();
            }
            eSActivity2 = this.f1737b.c.f1732b;
            com.estrongs.android.ui.view.z.a(eSActivity2, C0000R.string.access_failed, 1).show();
            return;
        }
        if (this.f1737b.f1733a.isShowing()) {
            this.f1737b.f1734b.setVisibility(8);
            df dfVar = this.f1737b.c;
            eSActivity = this.f1737b.c.f1732b;
            dfVar.c = new dn(eSActivity, this.f1736a);
            this.f1737b.c.b();
        }
    }
}
