package com.estrongs.android.pop.app.imageviewer;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bd implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f966a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bd(ViewImage21 viewImage21) {
        this.f966a = viewImage21;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.f966a.a();
        return false;
    }
}
