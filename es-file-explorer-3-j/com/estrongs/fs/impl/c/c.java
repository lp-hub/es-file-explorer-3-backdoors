package com.estrongs.fs.impl.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
final class c extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(intent.getAction()) && intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 10) == 12) {
            com.estrongs.android.pop.app.b.a.f471a = true;
            if (FileExplorerActivity.E() != null) {
                com.estrongs.android.pop.app.b.a.a().e();
            }
            a.f();
            if (com.estrongs.android.pop.app.b.a.c) {
                com.estrongs.android.pop.app.b.a.c = false;
                if (FileExplorerActivity.E() != null) {
                    FileExplorerActivity.E().G();
                }
            }
        }
    }
}
