package com.estrongs.android.util;

import android.net.wifi.WifiManager;
import android.os.PowerManager;
import android.util.Log;
import com.estrongs.android.pop.FexApplication;

/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private static PowerManager f2704a = null;

    /* renamed from: b, reason: collision with root package name */
    private static WifiManager f2705b = null;
    private static PowerManager.WakeLock c = null;
    private static WifiManager.WifiLock d = null;
    private static Integer e = 0;

    public static void a() {
        synchronized (e) {
            Integer num = e;
            e = Integer.valueOf(e.intValue() + 1);
            if (e.intValue() == 1) {
                c();
            }
        }
    }

    public static void b() {
        synchronized (e) {
            Integer num = e;
            e = Integer.valueOf(e.intValue() - 1);
            if (e.intValue() == 0) {
                d();
            }
        }
    }

    private static void c() {
        FexApplication a2 = FexApplication.a();
        if (a2 == null) {
            return;
        }
        if (f2704a == null) {
            f2704a = (PowerManager) a2.getSystemService("power");
        }
        if (f2705b == null) {
            f2705b = (WifiManager) a2.getSystemService("wifi");
        }
        boolean z = c == null || !c.isHeld();
        boolean z2 = d == null || !d.isHeld();
        if (z && f2704a != null) {
            c = f2704a.newWakeLock(1, "ES Wake Lock");
            c.acquire();
        }
        if (!z2 || f2705b == null) {
            return;
        }
        int a3 = com.estrongs.android.pop.p.a();
        try {
            if (a3 >= 10) {
                try {
                    d = f2705b.createWifiLock(3, "ES Wifi Lock");
                    if (d == null) {
                        d = f2705b.createWifiLock(1, "ES Wifi Lock");
                    }
                } catch (Exception e2) {
                    Log.e("Error", "change to acquire WIFI_MODE_FULL lock");
                    d = f2705b.createWifiLock(1, "ES Wifi Lock");
                }
            } else {
                d = f2705b.createWifiLock(1, "ES Wifi Lock");
            }
            d.acquire();
        } catch (Exception e3) {
            if (a3 < 10 || a3 >= 12) {
                return;
            }
            try {
                d = f2705b.createWifiLock(1, "ES Wifi Lock");
                d.acquire();
            } catch (Exception e4) {
                d = null;
            }
        }
    }

    private static void d() {
        try {
            if (d != null && d.isHeld()) {
                d.release();
                d = null;
            }
            if (c == null || !c.isHeld()) {
                return;
            }
            c.release();
            c = null;
        } catch (Exception e2) {
        }
    }
}
