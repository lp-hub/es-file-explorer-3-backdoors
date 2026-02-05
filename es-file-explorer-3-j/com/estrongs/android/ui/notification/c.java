package com.estrongs.android.ui.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.SystemClock;
import android.support.v4.app.w;
import android.text.TextPaint;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.aj;
import com.estrongs.android.util.aw;
import com.estrongs.android.util.i;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class c {
    private static ESTaskService d;
    private static boolean f;
    private boolean A;
    private boolean B;

    /* renamed from: a, reason: collision with root package name */
    public long f2258a;

    /* renamed from: b, reason: collision with root package name */
    public long f2259b;
    private Context i;
    private NotificationManager j;
    private boolean k;
    private Notification l;
    private int m;
    private int n;
    private CharSequence o;
    private CharSequence p;
    private CharSequence q;
    private PendingIntent r;
    private PendingIntent s;
    private boolean t;
    private long u;
    private long v;
    private w w;
    private Object x;
    private TextPaint y;
    private int z;
    private static Set<Integer> c = new HashSet();
    private static ServiceConnection e = new d();
    private static AtomicInteger g = new AtomicInteger(0);
    private static List<c> h = new LinkedList();

    public c(Context context) {
        this(context, true);
    }

    public c(Context context, boolean z) {
        this.u = -1L;
        this.v = -1L;
        this.y = new TextPaint();
        this.f2258a = 0L;
        this.f2259b = 0L;
        this.A = false;
        this.i = context;
        this.B = z;
        this.j = (NotificationManager) this.i.getSystemService("notification");
        this.k = false;
        this.m = g.addAndGet(1) + ((int) SystemClock.elapsedRealtime());
        this.y.setTextSize(16.0f);
        if (Build.VERSION.SDK_INT >= 14) {
            this.x = i.b(null, "android.app.Notification$Builder", new Class[]{Context.class}, new Context[]{this.i});
        } else {
            this.w = new w(this.i);
        }
        if (d != null) {
            synchronized (c) {
                if (this.B) {
                    c.add(Integer.valueOf(this.m));
                    if (!f && !aw.i()) {
                        Notification notification = new Notification(0, null, System.currentTimeMillis());
                        notification.flags |= 32;
                        d.startForeground(g.addAndGet(1) + ((int) SystemClock.elapsedRealtime()), notification);
                        f = true;
                    }
                }
            }
        }
    }

    private void a(int i, boolean z) {
        if (z) {
            this.z |= i;
        } else {
            this.z &= i ^ (-1);
        }
    }

    public static void b() {
        Intent intent = new Intent();
        intent.setClass(FexApplication.a(), ESTaskService.class);
        FexApplication.a().bindService(intent, e, 1);
    }

    public void a() {
        if (this.k) {
            if (Build.VERSION.SDK_INT >= 14) {
                aj.a(this.x).a("setProgress", new Class[]{Integer.TYPE, Integer.TYPE, Boolean.TYPE}, new Object[]{0, 0, false});
            } else {
                this.w.b(this.q);
            }
            c();
        }
    }

    public void a(int i) {
        this.n = i;
        if (Build.VERSION.SDK_INT >= 14) {
            aj.a(this.x).a("setSmallIcon", Integer.TYPE, Integer.valueOf(i));
        } else {
            this.w.a(i);
        }
        if (this.k) {
            c();
        }
    }

    public void a(Intent intent, boolean z) {
        if (intent.getComponent().getClassName().equals(FileExplorerActivity.class.getName())) {
            intent.addFlags(603979776);
        } else {
            intent.setAction(Long.toString(System.currentTimeMillis()));
        }
        if (z) {
            this.r = PendingIntent.getActivity(this.i, 0, intent, 134217728);
        } else {
            this.r = PendingIntent.getBroadcast(this.i, 0, intent, 134217728);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            aj.a(this.x).a("setContentIntent", this.r);
        } else {
            this.w.a(this.r);
        }
        if (this.k) {
            c();
        }
    }

    public void a(RemoteViews remoteViews) {
        if (Build.VERSION.SDK_INT >= 14) {
            aj.a(this.x).a("setContent", remoteViews);
        } else {
            this.w.a(remoteViews);
        }
    }

    public void a(CharSequence charSequence) {
        this.o = charSequence;
        if (Build.VERSION.SDK_INT >= 14) {
            aj.a(this.x).a("setTicker", CharSequence.class, charSequence);
        } else {
            this.w.c(charSequence);
        }
        if (this.k) {
            c();
        }
    }

    public void a(boolean z) {
        this.t = z;
        if (Build.VERSION.SDK_INT >= 14) {
            aj.a(this.x).a("setOngoing", Boolean.TYPE, Boolean.valueOf(z));
        } else {
            this.w.a(z);
        }
        if (!z) {
            synchronized (c) {
                if (this.B && c.remove(Integer.valueOf(this.m)) && c.isEmpty() && !aw.i()) {
                    d.stopForeground(true);
                    f = false;
                }
            }
        }
        if (this.k) {
            c();
        }
    }

    public void b(int i) {
        this.v = i;
    }

    public void b(Intent intent, boolean z) {
        if (z) {
            this.s = PendingIntent.getActivity(this.i, 0, intent, 134217728);
        } else {
            this.s = PendingIntent.getBroadcast(this.i, 0, intent, 134217728);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            aj.a(this.x).a("setDeleteIntent", this.s);
        } else {
            this.w.b(this.s);
        }
        if (this.k) {
            c();
        }
    }

    public void b(CharSequence charSequence) {
        this.p = charSequence;
        if (Build.VERSION.SDK_INT >= 14) {
            aj.a(this.x).a("setContentTitle", CharSequence.class, charSequence);
        } else {
            this.w.a(charSequence);
        }
        if (this.k) {
            c();
        }
    }

    public void b(boolean z) {
        a(16, z);
    }

    public void c() {
        if (this.A) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 14) {
            this.l = (Notification) aj.a(this.x).a("getNotification");
        } else {
            this.l = this.w.a();
        }
        this.l.flags |= this.z;
        this.j.notify(this.m, this.l);
        if (this.A) {
            this.j.cancel(this.m);
        } else {
            this.k = true;
        }
    }

    public void c(int i) {
        this.u = i;
        Long valueOf = Long.valueOf(new Date().getTime());
        if (valueOf.longValue() - this.f2258a >= 300 || this.u == this.v) {
            this.f2258a = valueOf.longValue();
            if (this.k) {
                if (Build.VERSION.SDK_INT >= 14) {
                    aj.a(this.x).a("setProgress", new Class[]{Integer.TYPE, Integer.TYPE, Boolean.TYPE}, new Object[]{Integer.valueOf((int) this.v), Integer.valueOf(i), false});
                } else {
                    this.w.b(((Object) this.q) + "  " + ((this.u * 100) / this.v) + "%");
                }
                c();
            }
        }
    }

    public void c(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 14) {
            this.q = charSequence;
        } else if (charSequence != null) {
            this.q = TextUtils.ellipsize(charSequence, this.y, 200.0f, TextUtils.TruncateAt.MIDDLE);
        } else {
            this.q = "";
        }
        Long valueOf = Long.valueOf(new Date().getTime());
        if (valueOf.longValue() - this.f2259b >= 300 || this.u == this.v) {
            this.f2259b = valueOf.longValue();
            if (Build.VERSION.SDK_INT >= 14) {
                aj.a(this.x).a("setContentText", CharSequence.class, this.q);
            } else if (this.u != -1) {
                this.w.b(((Object) this.q) + "  " + ((this.u * 100) / this.v) + "%");
            } else {
                this.w.b(this.q);
            }
            if (this.k) {
                c();
            }
        }
    }

    public Notification d() {
        if (Build.VERSION.SDK_INT >= 14) {
            this.l = (Notification) aj.a(this.x).a("getNotification");
        } else {
            this.l = this.w.a();
        }
        return this.l;
    }

    public void e() {
        this.A = true;
        this.j.cancel(this.m);
        synchronized (c) {
            if (this.B && c.remove(Integer.valueOf(this.m)) && c.isEmpty() && !aw.i()) {
                d.stopForeground(true);
                f = false;
            }
        }
        this.k = false;
    }

    public int f() {
        return this.m;
    }
}
