package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aj implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1627a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(ag agVar) {
        this.f1627a = agVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DialogInterface.OnClickListener onClickListener;
        onClickListener = this.f1627a.mButtonListener0;
        onClickListener.onClick(this.f1627a, -1);
    }
}
