package com.estrongs.android.pop.app.imageviewer;

import android.view.View;

/* loaded from: classes.dex */
class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CropImage f996a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(CropImage cropImage) {
        this.f996a = cropImage;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f996a.b();
    }
}
