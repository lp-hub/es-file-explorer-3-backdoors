package com.estrongs.android.ui.b;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ak implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1628a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(ag agVar) {
        this.f1628a = agVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1628a.dismiss();
    }
}
