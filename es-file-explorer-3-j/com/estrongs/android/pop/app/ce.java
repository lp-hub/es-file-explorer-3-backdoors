package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class ce implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageCommentPostActivity f558a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(ImageCommentPostActivity imageCommentPostActivity) {
        this.f558a = imageCommentPostActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f558a.finish();
    }
}
