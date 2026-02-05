package com.estrongs.android.ui.pcs;

import android.view.View;
import android.widget.ViewFlipper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cf implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f2349a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cf(bt btVar) {
        this.f2349a = btVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ViewFlipper viewFlipper;
        viewFlipper = this.f2349a.c;
        viewFlipper.showPrevious();
    }
}
