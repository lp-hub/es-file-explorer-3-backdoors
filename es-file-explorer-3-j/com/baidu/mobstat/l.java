package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.Date;
import java.util.Timer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l {
    private static Handler j;
    private Timer g;
    private static HandlerThread c = new HandlerThread("LogSenderThread");
    private static l k = new l();
    private boolean d = false;
    private SendStrategyEnum e = SendStrategyEnum.APP_START;
    private int f = 1;
    private int h = 0;
    private boolean i = false;

    /* renamed from: a, reason: collision with root package name */
    boolean f153a = false;

    /* renamed from: b, reason: collision with root package name */
    int f154b = 0;

    private l() {
        c.start();
        j = new Handler(c.getLooper());
    }

    public static l a() {
        return k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Context context) {
        this.f154b++;
        com.baidu.mobstat.a.c.a("**************sendtimes=" + this.f154b);
        if (this.f154b == 3) {
            return;
        }
        if (this.f154b == 1) {
            this.f153a = b.a().e(context);
        }
        if (this.f153a) {
            com.baidu.mobstat.a.c.a("**************succ=" + this.f154b);
        } else {
            j.postDelayed(new p(this, context), 30000L);
        }
    }

    public void a(int i) {
        if (i < 0 || i > 30) {
            return;
        }
        this.h = i;
    }

    public void a(Context context) {
        SendStrategyEnum sendStrategyEnum = SendStrategyEnum.APP_START;
        try {
            String a2 = z.a(context, "BaiduMobAd_EXCEPTION_LOG");
            if (!a2.equals("")) {
                if (a2.equals("true")) {
                    j.a().a(context);
                    BasicStoreTools.getInstance().setExceptionTurn(context, true);
                } else if (a2.equals("false")) {
                    BasicStoreTools.getInstance().setExceptionTurn(context, false);
                }
            }
        } catch (Exception e) {
            com.baidu.mobstat.a.c.a(e);
        }
        try {
            String a3 = z.a(context, "BaiduMobAd_SEND_STRATEGY");
            if (!a3.equals("")) {
                if (a3.equals(SendStrategyEnum.APP_START.name())) {
                    sendStrategyEnum = SendStrategyEnum.APP_START;
                    BasicStoreTools.getInstance().setSendStrategy(context, sendStrategyEnum.ordinal());
                } else if (a3.equals(SendStrategyEnum.ONCE_A_DAY.name())) {
                    sendStrategyEnum = SendStrategyEnum.ONCE_A_DAY;
                    BasicStoreTools.getInstance().setSendStrategy(context, sendStrategyEnum.ordinal());
                    BasicStoreTools.getInstance().setSendStrategyTime(context, 24);
                } else if (a3.equals(SendStrategyEnum.SET_TIME_INTERVAL.name())) {
                    sendStrategyEnum = SendStrategyEnum.SET_TIME_INTERVAL;
                    BasicStoreTools.getInstance().setSendStrategy(context, sendStrategyEnum.ordinal());
                }
            }
        } catch (Exception e2) {
            com.baidu.mobstat.a.c.a(e2);
            sendStrategyEnum = sendStrategyEnum;
        }
        try {
            String a4 = z.a(context, "BaiduMobAd_TIME_INTERVAL");
            if (!a4.equals("")) {
                int parseInt = Integer.parseInt(a4);
                if (sendStrategyEnum.ordinal() == SendStrategyEnum.SET_TIME_INTERVAL.ordinal() && parseInt > 0 && parseInt <= 24) {
                    BasicStoreTools.getInstance().setSendStrategyTime(context, parseInt);
                }
            }
        } catch (Exception e3) {
            com.baidu.mobstat.a.c.a(e3);
        }
        try {
            String a5 = z.a(context, "BaiduMobAd_ONLY_WIFI");
            if (a5.equals("")) {
                return;
            }
            if (a5.equals("true")) {
                BasicStoreTools.getInstance().setOnlyWifi(context, true);
            } else if (a5.equals("false")) {
                BasicStoreTools.getInstance().setOnlyWifi(context, false);
            }
        } catch (Exception e4) {
            com.baidu.mobstat.a.c.a(e4);
        }
    }

    public void a(Context context, SendStrategyEnum sendStrategyEnum, int i, boolean z) {
        if (!sendStrategyEnum.equals(SendStrategyEnum.SET_TIME_INTERVAL)) {
            this.e = sendStrategyEnum;
            BasicStoreTools.getInstance().setSendStrategy(context, this.e.ordinal());
            if (sendStrategyEnum.equals(SendStrategyEnum.ONCE_A_DAY)) {
                BasicStoreTools.getInstance().setSendStrategyTime(context, 24);
            }
        } else if (i <= 0 || i > 24) {
            com.baidu.mobstat.a.c.c("setSendLogStrategy", "time_interval is invalid, new strategy does not work");
        } else {
            this.f = i;
            this.e = SendStrategyEnum.SET_TIME_INTERVAL;
            BasicStoreTools.getInstance().setSendStrategy(context, this.e.ordinal());
            BasicStoreTools.getInstance().setSendStrategyTime(context, this.f);
        }
        this.d = z;
        BasicStoreTools.getInstance().setOnlyWifi(context, this.d);
        com.baidu.mobstat.a.c.a("stat", "sstype is:" + this.e.name() + " And time_interval is:" + this.f + " And m_only_wifi:" + this.d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Context context, boolean z) {
        if (z) {
            try {
                if (!z.m(context)) {
                    com.baidu.mobstat.a.c.a("stat", "sendLogData() does not send because of only_wifi setting");
                    return;
                }
            } catch (Exception e) {
                com.baidu.mobstat.a.c.a("stat", "sendLogData exception when get wifimanager");
                return;
            }
        }
        this.f154b = 0;
        this.f153a = false;
        e(context);
    }

    public void a(boolean z, Context context) {
        this.i = z;
        com.baidu.mobstat.a.c.a("stat", "APP_ANALYSIS_EXCEPTION is:" + this.i);
        BasicStoreTools.getInstance().setExceptionTurn(context, this.i);
    }

    public void b(Context context) {
        j.post(new m(this, context));
    }

    public void c(Context context) {
        BasicStoreTools.getInstance().setLastSendTime(context, new Date().getTime());
    }

    public void d(Context context) {
        this.g = new Timer();
        com.baidu.mobstat.a.c.a("***********************set timer log");
        this.g.schedule(new o(this, context), this.f * 3600000, this.f * 3600000);
    }
}
