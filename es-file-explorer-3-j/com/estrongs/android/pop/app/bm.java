package com.estrongs.android.pop.app;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bm implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageCommentActivity f533a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bm(ImageCommentActivity imageCommentActivity) {
        this.f533a = imageCommentActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.util.n nVar;
        com.estrongs.android.util.n nVar2;
        nVar = this.f533a.e;
        if (nVar != null) {
            nVar2 = this.f533a.e;
            if (nVar2.isAlive()) {
                return;
            }
        }
        this.f533a.a(true);
    }
}
