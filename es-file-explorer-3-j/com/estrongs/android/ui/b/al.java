package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class al implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1629a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(ag agVar) {
        this.f1629a = agVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DialogInterface.OnClickListener onClickListener;
        onClickListener = this.f1629a.mButtonListener1;
        onClickListener.onClick(this.f1629a, -2);
    }
}
