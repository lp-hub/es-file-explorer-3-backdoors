package com.estrongs.android.ftp;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f324a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(k kVar) {
        this.f324a = kVar;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ESFtpService eSFtpService;
        m mVar;
        m mVar2;
        this.f324a.c = ((g) iBinder).a();
        eSFtpService = this.f324a.c;
        if (eSFtpService == null) {
            return;
        }
        this.f324a.f323b = true;
        mVar = this.f324a.e;
        if (mVar != null) {
            mVar2 = this.f324a.e;
            mVar2.a();
        }
        this.f324a.e = null;
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f324a.c = null;
        this.f324a.f323b = false;
    }
}
