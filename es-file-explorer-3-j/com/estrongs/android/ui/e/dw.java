package com.estrongs.android.ui.e;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dw implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dv f2083a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dw(dv dvVar) {
        this.f2083a = dvVar;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        FileExplorerActivity fileExplorerActivity;
        if (i2 == 4 || i2 == 5) {
            fileExplorerActivity = this.f2083a.f2082b.f2079a.l;
            fileExplorerActivity.runOnUiThread(new dx(this, aVar));
        }
    }
}
