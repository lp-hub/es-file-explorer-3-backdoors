package com.estrongs.android.pop.app;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cm implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f570a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm(LocalFileSharingActivity localFileSharingActivity) {
        this.f570a = localFileSharingActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f570a.finish();
    }
}
