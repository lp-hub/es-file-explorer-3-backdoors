package com.estrongs.android.pop.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1424a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(FileExplorerActivity fileExplorerActivity) {
        this.f1424a = fileExplorerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f1424a.i.a()) {
            return;
        }
        if (this.f1424a.r && com.estrongs.android.view.n.a(this.f1424a).f2846a.g()) {
            com.estrongs.android.view.n.a(this.f1424a).f2846a.d();
            return;
        }
        com.estrongs.android.view.ar t = this.f1424a.t();
        if (t != null) {
            t.j();
        }
    }
}
