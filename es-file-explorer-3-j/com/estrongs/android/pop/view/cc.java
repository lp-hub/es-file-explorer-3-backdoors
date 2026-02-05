package com.estrongs.android.pop.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cc implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1367a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(FileExplorerActivity fileExplorerActivity) {
        this.f1367a = fileExplorerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1367a.b(true);
        view.setVisibility(8);
    }
}
