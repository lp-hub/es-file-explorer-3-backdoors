package com.estrongs.android.pop.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1318a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(FileExplorerActivity fileExplorerActivity) {
        this.f1318a = fileExplorerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.view.ar t = this.f1318a.t();
        if (t != null) {
            t.c(-4);
        }
    }
}
