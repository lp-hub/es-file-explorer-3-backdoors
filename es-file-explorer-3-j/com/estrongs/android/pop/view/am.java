package com.estrongs.android.pop.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class am implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.ar f1311a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1312b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(FileExplorerActivity fileExplorerActivity, com.estrongs.android.view.ar arVar) {
        this.f1312b = fileExplorerActivity;
        this.f1311a = arVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1312b.U.b(this.f1311a.ab());
        this.f1312b.U.b();
    }
}
