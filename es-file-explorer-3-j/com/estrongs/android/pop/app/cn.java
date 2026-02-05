package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cn implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f571a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn(LocalFileSharingActivity localFileSharingActivity) {
        this.f571a = localFileSharingActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent("android.settings.WIFI_SETTINGS");
        intent.setFlags(268435456);
        this.f571a.startActivity(intent);
    }
}
