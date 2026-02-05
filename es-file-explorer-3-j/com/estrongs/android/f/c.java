package com.estrongs.android.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import java.lang.reflect.Field;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f296a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f296a = bVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        WifiManager wifiManager;
        ConnectivityManager connectivityManager;
        WifiManager wifiManager2;
        WifiManager wifiManager3;
        WifiManager wifiManager4;
        WifiManager wifiManager5;
        WifiManager wifiManager6;
        WifiManager wifiManager7;
        Context context2;
        wifiManager = this.f296a.f295b;
        if (wifiManager == null) {
            this.f296a.f295b = (WifiManager) context.getSystemService("wifi");
        }
        connectivityManager = this.f296a.e;
        if (connectivityManager == null) {
            b bVar = this.f296a;
            context2 = this.f296a.f294a;
            bVar.e = (ConnectivityManager) context2.getSystemService("connectivity");
        }
        String action = intent.getAction();
        try {
            wifiManager2 = this.f296a.f295b;
            Field field = wifiManager2.getClass().getField("WIFI_AP_STATE_CHANGED_ACTION");
            wifiManager3 = this.f296a.f295b;
            String str = (String) field.get(wifiManager3);
            wifiManager4 = this.f296a.f295b;
            Field field2 = wifiManager4.getClass().getField("EXTRA_WIFI_AP_STATE");
            wifiManager5 = this.f296a.f295b;
            String str2 = (String) field2.get(wifiManager5);
            wifiManager6 = this.f296a.f295b;
            Field field3 = wifiManager6.getClass().getField("WIFI_AP_STATE_FAILED");
            wifiManager7 = this.f296a.f295b;
            int i = field3.getInt(wifiManager7);
            if (str.equals(action)) {
                this.f296a.a(intent.getIntExtra(str2, i));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
