package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import com.estrongs.android.ui.b.ei;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bw implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bv f1541a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(bv bvVar) {
        this.f1541a = bvVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == 0) {
            this.f1541a.f1540a.f1537a.c("apk://");
            com.estrongs.android.view.ar t = this.f1541a.f1540a.f1537a.t();
            if (t != null) {
                t.g("apk://");
            }
        } else if (i == 1) {
            this.f1541a.f1540a.f1537a.c("app://user");
            com.estrongs.android.view.ar t2 = this.f1541a.f1540a.f1537a.t();
            if (t2 != null) {
                t2.h("app://user");
            }
        } else if (i == 2) {
            this.f1541a.f1540a.f1537a.c("app://user");
            com.estrongs.android.view.ar t3 = this.f1541a.f1540a.f1537a.t();
            if (t3 != null) {
                t3.i("app://user");
            }
        } else if (i == 3) {
            this.f1541a.f1540a.f1537a.c("app://system");
            com.estrongs.android.view.ar t4 = this.f1541a.f1540a.f1537a.t();
            if (t4 != null) {
                t4.a("app://system");
            }
        } else if (i == 4) {
            com.estrongs.android.pop.utils.y.b(this.f1541a.f1540a.f1537a);
        } else if (i == 5) {
            new ei(this.f1541a.f1540a.f1537a).show();
        } else if (i == 6) {
            new Thread(new bx(this)).start();
            com.estrongs.android.pop.q.a(this.f1541a.f1540a.f1537a).a(false);
        }
        if (com.estrongs.android.util.a.a() != null) {
            com.estrongs.android.util.a.a().a("AppManager_Show", "AppManager_Show");
        }
        dialogInterface.dismiss();
    }
}
