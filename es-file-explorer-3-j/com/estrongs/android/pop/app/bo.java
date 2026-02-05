package com.estrongs.android.pop.app;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageCommentActivity f535a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo(ImageCommentActivity imageCommentActivity) {
        this.f535a = imageCommentActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f535a.b();
    }
}
