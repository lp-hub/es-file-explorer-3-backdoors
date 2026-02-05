package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ai implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1626a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(ag agVar) {
        this.f1626a = agVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DialogInterface.OnClickListener onClickListener;
        onClickListener = this.f1626a.mButtonListener0;
        onClickListener.onClick(this.f1626a, -1);
    }
}
