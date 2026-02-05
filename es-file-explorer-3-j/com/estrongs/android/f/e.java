package com.estrongs.android.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;

/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private Context f297a;

    /* renamed from: b, reason: collision with root package name */
    private final WifiManager f298b;
    private g d;
    private final BroadcastReceiver e = new f(this);
    private final IntentFilter c = new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED");

    public e(Context context, g gVar) {
        this.d = null;
        this.f297a = context;
        this.d = gVar;
        this.f298b = (WifiManager) context.getSystemService("wifi");
        this.c.addAction("android.net.wifi.supplicant.STATE_CHANGE");
        this.c.addAction("android.net.wifi.STATE_CHANGE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        switch (i) {
            case 0:
                this.d.b(4);
                return;
            case 1:
                this.d.b(5);
                return;
            case 2:
                this.d.b(2);
                return;
            case 3:
                this.d.b(3);
                return;
            default:
                this.d.b(6);
                return;
        }
    }

    public void a() {
        this.f297a.registerReceiver(this.e, this.c);
    }

    public boolean a(boolean z) {
        try {
            if (this.f298b.setWifiEnabled(z)) {
                if (z) {
                    this.d.b(1);
                } else {
                    this.d.b(4);
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void b() {
        this.f297a.unregisterReceiver(this.e);
    }
}
