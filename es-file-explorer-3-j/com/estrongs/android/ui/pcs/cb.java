package com.estrongs.android.ui.pcs;

import android.view.View;
import android.widget.ViewFlipper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cb implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f2344a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cb(bt btVar) {
        this.f2344a = btVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ViewFlipper viewFlipper;
        viewFlipper = this.f2344a.c;
        viewFlipper.showNext();
    }
}
