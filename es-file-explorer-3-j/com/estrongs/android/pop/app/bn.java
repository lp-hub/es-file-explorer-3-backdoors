package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class bn implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageCommentActivity f534a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(ImageCommentActivity imageCommentActivity) {
        this.f534a = imageCommentActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f534a.finish();
    }
}
