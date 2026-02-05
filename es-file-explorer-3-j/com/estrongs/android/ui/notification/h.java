package com.estrongs.android.ui.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Map;

/* loaded from: classes.dex */
class h extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f2266a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar) {
        this.f2266a = gVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Map map;
        Map map2;
        map = e.d;
        synchronized (map) {
            map2 = e.d;
            map2.remove(Long.valueOf(intent.getLongExtra("task_id", -1L)));
        }
    }
}
