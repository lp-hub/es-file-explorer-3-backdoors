package com.estrongs.android.pop.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ap implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1316a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(FileExplorerActivity fileExplorerActivity) {
        this.f1316a = fileExplorerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.view.ar t = this.f1316a.t();
        if (t != null) {
            t.c(-1);
        }
    }
}
