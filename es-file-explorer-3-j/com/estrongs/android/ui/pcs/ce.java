package com.estrongs.android.ui.pcs;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ce implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f2348a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(bt btVar) {
        this.f2348a = btVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2348a.r();
    }
}
