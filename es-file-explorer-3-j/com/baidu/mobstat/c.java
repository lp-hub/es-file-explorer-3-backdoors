package com.baidu.mobstat;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.baidu.sapi2.BDAccountManager;
import de.aflx.sardine.util.SardineUtil;
import java.util.Date;
import org.json.JSONException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static String f135a = "Android";

    /* renamed from: b, reason: collision with root package name */
    private String f136b;
    private String f;
    private String g;
    private int h;
    private int i;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String c = null;
    private String d = null;
    private int e = -1;
    private String j = null;

    public synchronized void a(Context context) {
        if (this.e == -1) {
            com.baidu.mobstat.a.b.d(context, "android.permission.READ_PHONE_STATE");
            com.baidu.mobstat.a.b.d(context, "android.permission.INTERNET");
            com.baidu.mobstat.a.b.d(context, "android.permission.ACCESS_NETWORK_STATE");
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(BDAccountManager.KEY_PHONE);
            this.f136b = Build.VERSION.SDK;
            this.l = Build.MODEL;
            try {
                this.g = telephonyManager.getDeviceId();
                this.g = b.a(this.g, context);
            } catch (Exception e) {
                com.baidu.mobstat.a.c.a(e);
            }
            if (this.g == null) {
                this.g = b.g(context);
            }
            if (this.g == null || this.g.equals("000000000000000")) {
                this.g = BasicStoreTools.getInstance().loadGenerateDeviceId(context);
            }
            if (this.g == null || this.g.equals("000000000000000")) {
                this.g = "hol" + (new Date().getTime() + "").hashCode() + "mes";
                BasicStoreTools.getInstance().setGenerateDeviceId(context, this.g);
                com.baidu.mobstat.a.c.a("stat", "设备id为空，系统生成id =" + this.g);
            }
            if (this.d == null) {
                this.d = b.f(context);
            }
            try {
                this.k = telephonyManager.getNetworkOperator();
            } catch (Exception e2) {
                com.baidu.mobstat.a.c.a(e2);
            }
            try {
                this.h = z.a(context);
                this.i = z.b(context);
                if (context.getResources().getConfiguration().orientation == 2) {
                    com.baidu.mobstat.a.c.a("stat", "Configuration.ORIENTATION_LANDSCAPE");
                    this.h ^= this.i;
                    this.i = this.h ^ this.i;
                    this.h ^= this.i;
                }
            } catch (Exception e3) {
                com.baidu.mobstat.a.c.a(e3);
            }
            try {
                if (this.j == null) {
                    this.j = z.a(context, "BaiduMobAd_CHANNEL");
                }
            } catch (Exception e4) {
                com.baidu.mobstat.a.c.a(e4);
            }
            if (this.c == null) {
                this.c = z.a(context, "BaiduMobAd_STAT_ID");
            }
            try {
                this.e = z.c(context);
                this.f = z.d(context);
            } catch (Exception e5) {
                com.baidu.mobstat.a.c.a(e5);
            }
            try {
                String a2 = z.a(context, "BaiduMobAd_CELL_LOCATION");
                if (a2 == null || !a2.toLowerCase().equals("false")) {
                    this.m = z.e(context);
                } else {
                    this.m = "0_0_0";
                }
            } catch (Exception e6) {
                com.baidu.mobstat.a.c.a(e6);
            }
            try {
                String a3 = z.a(context, "BaiduMobAd_GPS_LOCATION");
                if (a3 == null || !a3.toLowerCase().equals("false")) {
                    this.n = z.f(context);
                } else {
                    this.n = "";
                }
            } catch (Exception e7) {
                com.baidu.mobstat.a.c.a(e7);
            }
            try {
                String a4 = z.a(context, "BaiduMobAd_WIFI_LOCATION");
                if (a4 == null || !a4.toLowerCase().equals("false")) {
                    this.o = z.h(context);
                } else {
                    this.o = "";
                }
            } catch (Exception e8) {
                com.baidu.mobstat.a.c.a(e8);
            }
            try {
                this.p = z.i(context);
            } catch (Exception e9) {
                com.baidu.mobstat.a.c.a(e9);
            }
        }
    }

    public synchronized void b(Context context) {
        if (b.c().length() <= 0) {
            a(context);
            try {
                b.c().put("o", f135a == null ? "" : f135a);
                b.c().put(SardineUtil.CUSTOM_NAMESPACE_PREFIX, this.f136b == null ? "" : this.f136b);
                b.c().put("k", this.c == null ? "" : this.c);
                b.c().put("i", this.d == null ? "" : this.d);
                b.c().put("v", "3.2");
                b.c().put("a", this.e);
                b.c().put("n", this.f == null ? "" : this.f);
                b.c().put(SardineUtil.DEFAULT_NAMESPACE_PREFIX, this.g == null ? "" : this.g);
                b.c().put("w", this.h);
                b.c().put("h", this.i);
                b.c().put("c", this.j == null ? "" : this.j);
                b.c().put("op", this.k == null ? "" : this.k);
                b.c().put("m", this.l == null ? "" : this.l);
                b.c().put("cl", this.m);
                b.c().put("gl", this.n == null ? "" : this.n);
                b.c().put("wl", this.o == null ? "" : this.o);
                b.c().put("l", this.p == null ? "" : this.p);
                b.c().put("t", System.currentTimeMillis());
                b.c().put("sq", 0);
                com.baidu.mobstat.a.c.a("stat", b.c().toString());
            } catch (JSONException e) {
                com.baidu.mobstat.a.c.a("stat", "header ini error");
                throw new RuntimeException("header ini error");
            }
        }
    }
}
