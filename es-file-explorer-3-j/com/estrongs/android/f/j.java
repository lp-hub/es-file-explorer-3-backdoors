package com.estrongs.android.f;

import android.content.Context;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class j {

    /* renamed from: b, reason: collision with root package name */
    private ScanResult f304b;
    private Context e;

    /* renamed from: a, reason: collision with root package name */
    boolean f303a = false;
    private WifiInfo c = null;
    private NetworkInfo.DetailedState d = null;

    public j(Context context, h hVar, ScanResult scanResult) {
        this.f304b = null;
        this.f304b = scanResult;
        this.e = context;
    }

    public static String a(String str) {
        return "\"" + str + "\"";
    }

    public String a() {
        return this.f304b.SSID;
    }

    public void a(WifiInfo wifiInfo, NetworkInfo.DetailedState detailedState) {
        if (this.f304b.SSID.equals(wifiInfo.getSSID())) {
            this.c = wifiInfo;
            if (detailedState != null) {
                this.d = detailedState;
                return;
            }
            return;
        }
        if (detailedState == NetworkInfo.DetailedState.CONNECTING || detailedState == NetworkInfo.DetailedState.OBTAINING_IPADDR || detailedState == NetworkInfo.DetailedState.CONNECTED || detailedState == NetworkInfo.DetailedState.AUTHENTICATING || detailedState == NetworkInfo.DetailedState.DISCONNECTED) {
            this.c = null;
            this.d = null;
        }
    }

    public boolean a(ScanResult scanResult) {
        if (!this.f304b.SSID.equals(scanResult.SSID)) {
            return false;
        }
        this.f304b = scanResult;
        return true;
    }

    public String[] b() {
        String[] strArr = new String[2];
        strArr[0] = h.a(this.f304b.SSID);
        if (this.d == null) {
            strArr[1] = null;
        } else if (this.d == NetworkInfo.DetailedState.CONNECTED) {
            strArr[1] = this.e.getString(C0000R.string.progress_connected);
        } else if (this.d == NetworkInfo.DetailedState.CONNECTING) {
            strArr[1] = this.e.getString(C0000R.string.progress_connecting);
        } else if (this.d == NetworkInfo.DetailedState.OBTAINING_IPADDR) {
            strArr[1] = this.e.getString(C0000R.string.progress_getting_ip);
        } else if (this.d == NetworkInfo.DetailedState.SCANNING) {
            strArr[1] = this.e.getString(C0000R.string.progress_scanning);
        } else if (this.d == NetworkInfo.DetailedState.AUTHENTICATING) {
            strArr[1] = this.e.getString(C0000R.string.progress_verifying);
        }
        return strArr;
    }

    public int c() {
        if (this.f304b.capabilities.contains("WEP")) {
            return 1;
        }
        if (this.f304b.capabilities.contains("PSK")) {
            return 2;
        }
        return this.f304b.capabilities.contains("EAP") ? 3 : 0;
    }

    public NetworkInfo.DetailedState d() {
        return this.d;
    }

    public int e() {
        return this.c != null ? WifiManager.calculateSignalLevel(this.c.getRssi(), 4) : WifiManager.calculateSignalLevel(this.f304b.level, 4);
    }

    public WifiInfo f() {
        return this.c;
    }
}
