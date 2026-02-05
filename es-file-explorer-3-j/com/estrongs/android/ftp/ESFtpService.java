package com.estrongs.android.ftp;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.IBinder;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.q;

/* loaded from: classes.dex */
public class ESFtpService extends Service {
    private static boolean d = true;
    private final IBinder c = new g(this);
    private int e = 0;

    /* renamed from: a, reason: collision with root package name */
    Handler f307a = new e(this);

    /* renamed from: b, reason: collision with root package name */
    d f308b = new f(this);

    /* JADX INFO: Access modifiers changed from: private */
    public String a(int i) {
        Resources resources = getResources();
        String b2 = com.estrongs.android.pop.esclasses.c.b(i);
        return b2 == null ? (String) resources.getText(i) : b2;
    }

    private void g() {
        if (a.e() != null) {
            a.e().j = null;
        }
        this.f307a.removeMessages(1);
        this.f307a.removeMessages(2);
        b();
    }

    public a a() {
        return a.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a a(String str, String str2, int i, String str3) {
        a.a(str, str2, i, str3);
        if (a.e() == null) {
            return null;
        }
        a.e().j = this.f308b;
        return a.e();
    }

    public void a(int i, String str) {
        try {
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            if (notificationManager != null) {
                if (a.e() == null || d) {
                    notificationManager.cancel(37219999);
                    this.e = 0;
                    return;
                }
                Notification notification = new Notification();
                notification.tickerText = a(C0000R.string.notification_es_ftp_svr);
                notification.when = System.currentTimeMillis();
                if (i == 0) {
                    notification.icon = C0000R.drawable.ftp_ser_ind;
                } else if (i == 1) {
                    notification.icon = C0000R.drawable.ftp_ser_down_ind;
                } else if (i == 2) {
                    notification.icon = C0000R.drawable.ftp_ser_up_ind;
                } else if (i == 3) {
                    notification.icon = C0000R.drawable.ftp_ser_updown_ind;
                }
                notification.flags |= 2;
                String a2 = a(C0000R.string.notification_es_ftp_svr);
                Intent intent = new Intent(this, (Class<?>) ShowDialogActivity.class);
                intent.putExtra("stop_ftp_server", true);
                notification.setLatestEventInfo(this, a2, str, PendingIntent.getActivity(this, 0, intent, 268435456));
                notificationManager.notify(37219999, notification);
            }
        } catch (Exception e) {
        }
    }

    public void a(String str) {
        if (a.e() == null) {
            return;
        }
        a.e().a(str);
    }

    public void a(String str, String str2) {
        if (a.e() == null) {
            return;
        }
        a.e().a(str, str2);
    }

    public void b() {
        a.j();
        d();
        com.estrongs.android.util.m.b();
    }

    public int c() {
        if (a.e() == null) {
            return 1;
        }
        a.f = q.a(this).W();
        int a2 = a.e().a(this);
        if (a2 == 0) {
            try {
                d = false;
                String str = null;
                a e = a.e();
                if (e != null) {
                    String b2 = com.estrongs.android.pop.esclasses.c.b(C0000R.string.preference_ftpsvr_visit);
                    if (b2 == null) {
                        b2 = (String) getText(C0000R.string.preference_ftpsvr_visit);
                    }
                    str = b2 + "ftp:/" + e.g().toString() + ":" + e.h() + "/";
                }
                if (str == null) {
                    str = a(C0000R.string.notification_es_ftp_svr_idle) + "...";
                }
                a(0, str);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            this.e = 0;
        }
        com.estrongs.android.util.m.a();
        return a2;
    }

    public void d() {
        try {
            ((NotificationManager) getSystemService("notification")).cancel(37219999);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.e = 0;
    }

    public boolean e() {
        a.i = true;
        return true;
    }

    public boolean f() {
        a.i = false;
        return false;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.c;
    }

    @Override // android.app.Service
    public void onCreate() {
        d = false;
        try {
            com.estrongs.android.pop.esclasses.c.a(this);
        } catch (Exception e) {
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        d = true;
        g();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        d = false;
        return 1;
    }
}
