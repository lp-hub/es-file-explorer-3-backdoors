package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.ImageView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cl implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageView f568a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f569b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cl(LocalFileSharingActivity localFileSharingActivity, ImageView imageView) {
        this.f569b = localFileSharingActivity;
        this.f568a = imageView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f568a.performClick();
    }
}
