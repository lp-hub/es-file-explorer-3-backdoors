package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class am implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1630a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(ag agVar) {
        this.f1630a = agVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DialogInterface.OnClickListener onClickListener;
        onClickListener = this.f1630a.mButtonListener0;
        onClickListener.onClick(this.f1630a, -1);
    }
}
