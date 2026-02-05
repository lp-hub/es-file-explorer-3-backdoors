package com.estrongs.android.ui.notification;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* loaded from: classes.dex */
public class ESTaskService extends Service {

    /* renamed from: a, reason: collision with root package name */
    private b f2254a = new b(this);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2254a;
    }
}
