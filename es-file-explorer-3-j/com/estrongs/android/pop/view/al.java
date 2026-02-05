package com.estrongs.android.pop.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class al implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.ar f1309a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1310b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(FileExplorerActivity fileExplorerActivity, com.estrongs.android.view.ar arVar) {
        this.f1310b = fileExplorerActivity;
        this.f1309a = arVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1310b.U.b(this.f1309a.ab());
        this.f1310b.U.b();
    }
}
