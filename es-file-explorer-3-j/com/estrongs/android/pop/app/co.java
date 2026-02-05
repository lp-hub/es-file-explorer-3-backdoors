package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.Intent;
import com.estrongs.android.pop.app.network.EsNetworkActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class co implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f572a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public co(LocalFileSharingActivity localFileSharingActivity) {
        this.f572a = localFileSharingActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f572a.startActivity(new Intent(this.f572a, (Class<?>) EsNetworkActivity.class));
    }
}
