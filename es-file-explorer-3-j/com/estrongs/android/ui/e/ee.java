package com.estrongs.android.ui.e;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ee implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ed f2094a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ee(ed edVar) {
        this.f2094a = edVar;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        FileExplorerActivity fileExplorerActivity;
        if (i2 == 4 || i2 == 5) {
            fileExplorerActivity = this.f2094a.f2093a.l;
            fileExplorerActivity.a(new ef(this));
        }
    }
}
