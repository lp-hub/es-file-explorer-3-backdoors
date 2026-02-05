package com.estrongs.android.pop.app;

import android.app.NotificationManager;
import android.view.View;

/* loaded from: classes.dex */
class ax implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileSharingNotificationActivity f468a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(FileSharingNotificationActivity fileSharingNotificationActivity) {
        this.f468a = fileSharingNotificationActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        NotificationManager notificationManager;
        com.estrongs.fs.b.ag.a();
        notificationManager = this.f468a.f348b;
        notificationManager.cancel(1);
        this.f468a.finish();
    }
}
