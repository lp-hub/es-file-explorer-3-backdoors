package com.estrongs.android.ui.notification;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes.dex */
final class d implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ESTaskService unused = c.d = ((b) iBinder).a();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        ESTaskService unused = c.d = null;
    }
}
