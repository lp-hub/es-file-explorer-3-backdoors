package com.estrongs.android.pop.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.ar f1296a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.ag f1297b;
    final /* synthetic */ FileExplorerActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(FileExplorerActivity fileExplorerActivity, com.estrongs.android.view.ar arVar, com.estrongs.android.ui.b.ag agVar) {
        this.c = fileExplorerActivity;
        this.f1296a = arVar;
        this.f1297b = agVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1296a.aa();
        this.f1297b.dismiss();
    }
}
