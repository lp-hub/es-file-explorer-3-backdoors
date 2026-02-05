package com.estrongs.android.pop.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ao implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1315a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(FileExplorerActivity fileExplorerActivity) {
        this.f1315a = fileExplorerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1315a.i.a(true);
        if ("edit_mode".equals(this.f1315a.j)) {
            this.f1315a.k.m();
        }
    }
}
