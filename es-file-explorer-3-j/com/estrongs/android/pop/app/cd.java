package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class cd implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageCommentPostActivity f557a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cd(ImageCommentPostActivity imageCommentPostActivity) {
        this.f557a = imageCommentPostActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f557a.setResult(0);
        this.f557a.finish();
    }
}
