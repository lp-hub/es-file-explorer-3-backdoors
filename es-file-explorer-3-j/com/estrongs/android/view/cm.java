package com.estrongs.android.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
class cm extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ck f2817a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm(ck ckVar) {
        this.f2817a = ckVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f2817a.b(intent);
    }
}
