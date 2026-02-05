package com.estrongs.android.pop.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ae implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1298a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(FileExplorerActivity fileExplorerActivity) {
        this.f1298a = fileExplorerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1298a.ay();
    }
}
