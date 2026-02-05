package com.estrongs.android.ui.b;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ah implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1625a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(ag agVar) {
        this.f1625a = agVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1625a.dismiss();
    }
}
