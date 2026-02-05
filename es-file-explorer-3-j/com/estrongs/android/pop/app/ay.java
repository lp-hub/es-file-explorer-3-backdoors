package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class ay implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileSharingNotificationActivity f469a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ay(FileSharingNotificationActivity fileSharingNotificationActivity) {
        this.f469a = fileSharingNotificationActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f469a.finish();
    }
}
