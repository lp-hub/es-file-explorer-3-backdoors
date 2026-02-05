package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class be implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ GestureManageActivity f524a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(GestureManageActivity gestureManageActivity) {
        this.f524a = gestureManageActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f524a.finish();
    }
}
