package com.estrongs.android.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
class cn extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ck f2818a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn(ck ckVar) {
        this.f2818a = ckVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        WifiManager wifiManager;
        WifiManager wifiManager2;
        WifiManager wifiManager3;
        WifiManager wifiManager4;
        WifiManager wifiManager5;
        WifiManager wifiManager6;
        String action = intent.getAction();
        try {
            wifiManager = this.f2818a.am;
            Field field = wifiManager.getClass().getField("WIFI_AP_STATE_CHANGED_ACTION");
            wifiManager2 = this.f2818a.am;
            String str = (String) field.get(wifiManager2);
            wifiManager3 = this.f2818a.am;
            Field field2 = wifiManager3.getClass().getField("EXTRA_WIFI_AP_STATE");
            wifiManager4 = this.f2818a.am;
            String str2 = (String) field2.get(wifiManager4);
            wifiManager5 = this.f2818a.am;
            Field field3 = wifiManager5.getClass().getField("WIFI_AP_STATE_FAILED");
            wifiManager6 = this.f2818a.am;
            int i = field3.getInt(wifiManager6);
            if (str.equals(action)) {
                this.f2818a.b(intent.getIntExtra(str2, i));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
