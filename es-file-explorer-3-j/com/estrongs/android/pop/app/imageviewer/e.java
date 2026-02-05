package com.estrongs.android.pop.app.imageviewer;

import android.view.View;

/* loaded from: classes.dex */
class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CropImage f995a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(CropImage cropImage) {
        this.f995a = cropImage;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f995a.setResult(0);
        this.f995a.finish();
    }
}
