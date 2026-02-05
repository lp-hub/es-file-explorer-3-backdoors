package com.estrongs.android.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private final Context f294a;

    /* renamed from: b, reason: collision with root package name */
    private WifiManager f295b;
    private IntentFilter c;
    private SharedPreferences d;
    private ConnectivityManager e;
    private d f;
    private final BroadcastReceiver g = new c(this);

    public b(Context context, d dVar) {
        this.f = null;
        this.f294a = context;
        this.f = dVar;
        this.f295b = (WifiManager) context.getSystemService("wifi");
        this.e = (ConnectivityManager) this.f294a.getSystemService("connectivity");
        this.d = this.f294a.getSharedPreferences("wifi_setting", 0);
        try {
            String str = (String) this.f295b.getClass().getField("WIFI_AP_STATE_CHANGED_ACTION").get(this.f295b);
            String str2 = (String) this.e.getClass().getField("ACTION_TETHER_STATE_CHANGED").get(this.e);
            this.c = new IntentFilter(str);
            this.c.addAction(str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        try {
            int i2 = this.f295b.getClass().getField("WIFI_AP_STATE_ENABLING").getInt(this.f295b);
            int i3 = this.f295b.getClass().getField("WIFI_AP_STATE_ENABLED").getInt(this.f295b);
            int i4 = this.f295b.getClass().getField("WIFI_AP_STATE_DISABLING").getInt(this.f295b);
            int i5 = this.f295b.getClass().getField("WIFI_AP_STATE_DISABLED").getInt(this.f295b);
            if (i == i2) {
                this.f.a(2);
            } else if (i == i3) {
                this.f.a(3);
            } else if (i == i4) {
                this.f.a(4);
            } else if (i == i5) {
                this.f.a(5);
            } else {
                this.f.a(6);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a() {
        this.f294a.registerReceiver(this.g, this.c);
    }

    public boolean a(boolean z, WifiConfiguration wifiConfiguration) {
        int wifiState = this.f295b.getWifiState();
        if (z && (wifiState == 2 || wifiState == 3)) {
            this.f295b.setWifiEnabled(false);
            SharedPreferences.Editor edit = this.d.edit();
            edit.putInt("wifi_saved_state", 1);
            edit.commit();
        }
        try {
            if (((Boolean) this.f295b.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE).invoke(this.f295b, wifiConfiguration, Boolean.valueOf(z))).booleanValue()) {
                this.f.a(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!z && this.d.getInt("wifi_saved_state", -1) == 1) {
            this.f295b.setWifiEnabled(true);
            SharedPreferences.Editor edit2 = this.d.edit();
            edit2.putInt("wifi_saved_state", 0);
            edit2.commit();
        }
        return false;
    }

    public void b() {
        this.f294a.unregisterReceiver(this.g);
    }
}
