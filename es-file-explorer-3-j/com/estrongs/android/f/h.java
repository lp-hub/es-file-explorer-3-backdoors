package com.estrongs.android.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public static String f300a = "ES_";
    private final BroadcastReceiver c;
    private final l d;
    private WifiManager e;
    private e f;
    private List<j> g;
    private WifiInfo h;
    private Context j;
    private n k;
    private k l;
    private boolean i = false;

    /* renamed from: b, reason: collision with root package name */
    private final IntentFilter f301b = new IntentFilter();

    public h(Context context, k kVar, g gVar, n nVar) {
        this.j = context;
        this.l = kVar;
        this.k = nVar;
        this.f301b.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.f301b.addAction("android.net.wifi.SCAN_RESULTS");
        this.f301b.addAction("android.net.wifi.NETWORK_IDS_CHANGED");
        this.f301b.addAction("android.net.wifi.supplicant.STATE_CHANGE");
        this.f301b.addAction("android.net.wifi.STATE_CHANGE");
        this.f301b.addAction("android.net.wifi.RSSI_CHANGED");
        this.c = new i(this);
        this.d = new l(this, null);
        this.e = (WifiManager) this.j.getSystemService("wifi");
        this.f = new e(this.j, gVar);
        this.f.a();
        this.g = new ArrayList();
    }

    public static String a(String str) {
        return str != null ? str : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Intent intent) {
        String action = intent.getAction();
        if ("android.net.wifi.WIFI_STATE_CHANGED".equals(action)) {
            c(intent.getIntExtra("wifi_state", 4));
            return;
        }
        if ("android.net.wifi.SCAN_RESULTS".equals(action)) {
            f();
            return;
        }
        if ("android.net.wifi.NETWORK_IDS_CHANGED".equals(action)) {
            f();
            return;
        }
        if ("android.net.wifi.supplicant.STATE_CHANGE".equals(action)) {
            a(WifiInfo.getDetailedStateOf((SupplicantState) intent.getParcelableExtra("newState")));
        } else if ("android.net.wifi.STATE_CHANGE".equals(action)) {
            a(((NetworkInfo) intent.getParcelableExtra("networkInfo")).getDetailedState());
        } else if ("android.net.wifi.RSSI_CHANGED".equals(action)) {
            a((NetworkInfo.DetailedState) null);
        }
    }

    private void a(NetworkInfo.DetailedState detailedState) {
        if (!this.e.isWifiEnabled()) {
            this.d.b();
            return;
        }
        if (detailedState == NetworkInfo.DetailedState.OBTAINING_IPADDR) {
            this.d.b();
        } else {
            this.d.a();
        }
        this.h = this.e.getConnectionInfo();
        this.k.a(this.h, detailedState);
        for (int size = this.g.size() - 1; size >= 0; size--) {
            this.g.get(size).a(this.h, detailedState);
        }
        if (this.i && (detailedState == NetworkInfo.DetailedState.CONNECTED || detailedState == NetworkInfo.DetailedState.DISCONNECTED || detailedState == NetworkInfo.DetailedState.FAILED)) {
            this.i = false;
        }
        f();
    }

    private void c(int i) {
        if (i == 3) {
            this.d.a();
            f();
            return;
        }
        this.d.b();
        this.g.clear();
        if (this.l != null) {
            this.l.a();
        }
    }

    private void f() {
        boolean z;
        if (this.l == null) {
            return;
        }
        Iterator<j> it = this.g.iterator();
        while (it.hasNext()) {
            it.next().f303a = true;
        }
        List<ScanResult> scanResults = this.e.getScanResults();
        if (scanResults != null) {
            for (ScanResult scanResult : scanResults) {
                if (scanResult.SSID != null && scanResult.SSID.length() != 0 && !scanResult.capabilities.contains("[IBSS]") && !scanResult.capabilities.contains("EAP")) {
                    boolean z2 = false;
                    for (j jVar : this.g) {
                        if (jVar.a(scanResult)) {
                            jVar.f303a = false;
                            z = true;
                        } else {
                            z = z2;
                        }
                        z2 = z;
                    }
                    if (!z2) {
                        j jVar2 = new j(this.j, this, scanResult);
                        if (jVar2.a().startsWith(f300a)) {
                            this.g.add(0, jVar2);
                        } else {
                            this.g.add(jVar2);
                        }
                        jVar2.f303a = false;
                    }
                }
            }
        }
        for (int size = this.g.size() - 1; size >= 0; size--) {
            if (this.g.get(size).f303a) {
                this.g.remove(size);
            }
        }
        this.l.a();
    }

    public void a() {
        this.f.a();
        this.j.registerReceiver(this.c, this.f301b);
    }

    public boolean a(WifiConfiguration wifiConfiguration) {
        List<WifiConfiguration> configuredNetworks = this.e.getConfiguredNetworks();
        if (configuredNetworks != null) {
            int i = 0;
            WifiConfiguration wifiConfiguration2 = wifiConfiguration;
            while (true) {
                if (i >= configuredNetworks.size()) {
                    break;
                }
                wifiConfiguration2 = configuredNetworks.get(i);
                if (wifiConfiguration2.SSID.equals(wifiConfiguration.SSID)) {
                    wifiConfiguration2.allowedKeyManagement = wifiConfiguration.allowedKeyManagement;
                    wifiConfiguration2.preSharedKey = wifiConfiguration.preSharedKey;
                    break;
                }
                i++;
            }
            if (i != configuredNetworks.size()) {
                wifiConfiguration = wifiConfiguration2;
            }
        }
        int updateNetwork = this.e.updateNetwork(wifiConfiguration);
        if (updateNetwork == -1) {
            updateNetwork = this.e.addNetwork(wifiConfiguration);
        }
        if (updateNetwork == -1) {
            return false;
        }
        this.e.enableNetwork(updateNetwork, false);
        wifiConfiguration.networkId = updateNetwork;
        wifiConfiguration.priority = 1;
        this.e.updateNetwork(wifiConfiguration);
        this.e.enableNetwork(updateNetwork, true);
        this.e.reconnect();
        this.i = true;
        return true;
    }

    public String[] a(int i) {
        return this.g.get(i).b();
    }

    public j b(int i) {
        if (i < 0 || i > this.g.size() - 1) {
            return null;
        }
        return this.g.get(i);
    }

    public void b() {
        this.f.b();
        this.j.unregisterReceiver(this.c);
        this.d.b();
    }

    public void c() {
        this.f.a(true);
        this.d.a();
    }

    public void d() {
        this.d.b();
        this.f.a(false);
    }

    public int e() {
        return this.g.size();
    }
}
