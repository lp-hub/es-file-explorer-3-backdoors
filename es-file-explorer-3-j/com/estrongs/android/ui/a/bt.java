package com.estrongs.android.ui.a;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.ei;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bt implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1537a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.theme.al f1538b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(FileExplorerActivity fileExplorerActivity, com.estrongs.android.ui.theme.al alVar) {
        this.f1537a = fileExplorerActivity;
        this.f1538b = alVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ei.a(this.f1537a)) {
            this.f1537a.runOnUiThread(new bv(this));
        } else {
            this.f1537a.runOnUiThread(new bu(this));
        }
    }
}
