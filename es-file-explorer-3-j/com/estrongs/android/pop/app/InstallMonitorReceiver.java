package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.FexApplication;

/* loaded from: classes.dex */
public class InstallMonitorReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction()) && com.estrongs.android.pop.q.a(FexApplication.f325a).Q()) {
                String str = intent.getDataString().split(":")[1];
                Intent intent2 = new Intent(context, (Class<?>) InstallMonitorActivity.class);
                intent2.addFlags(276824064);
                intent2.putExtra("packageName", str);
                context.startActivity(intent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
