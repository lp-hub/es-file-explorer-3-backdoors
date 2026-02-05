package com.estrongs.android.pop.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
final class bu extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1240a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bu(com.estrongs.a.a aVar) {
        this.f1240a = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.MEDIA_SCANNER_FINISHED")) {
            this.f1240a.forceResume();
        }
    }
}
