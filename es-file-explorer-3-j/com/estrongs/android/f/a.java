package com.estrongs.android.f;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public WifiConfiguration f292a;

    /* renamed from: b, reason: collision with root package name */
    private Context f293b;
    private WifiManager c;
    private b d;

    public a(Context context, d dVar) {
        this.f292a = null;
        this.f293b = context;
        this.c = (WifiManager) context.getSystemService("wifi");
        try {
            this.f292a = (WifiConfiguration) this.c.getClass().getMethod("getWifiApConfiguration", new Class[0]).invoke(this.c, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.d = new b(this.f293b, dVar);
        this.d.a();
    }

    public void a() {
        this.d.a();
    }

    public void a(WifiConfiguration wifiConfiguration) {
        this.f292a = wifiConfiguration;
        if (this.f292a != null) {
            this.d.a(true, this.f292a);
        }
    }

    public void b() {
        this.d.b();
    }

    public void c() {
        this.d.a(false, (WifiConfiguration) null);
    }

    public WifiConfiguration d() {
        try {
            return (WifiConfiguration) this.c.getClass().getMethod("getWifiApConfiguration", new Class[0]).invoke(this.c, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
