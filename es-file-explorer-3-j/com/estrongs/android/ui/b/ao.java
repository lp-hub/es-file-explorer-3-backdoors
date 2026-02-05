package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ao implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1632a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(ag agVar) {
        this.f1632a = agVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DialogInterface.OnClickListener onClickListener;
        onClickListener = this.f1632a.mButtonListener2;
        onClickListener.onClick(this.f1632a, -3);
    }
}
