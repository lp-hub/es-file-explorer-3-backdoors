package com.baidu.mobstat;

import android.content.Context;
import android.os.Process;

/* loaded from: classes.dex */
class k extends Thread {

    /* renamed from: a, reason: collision with root package name */
    private static k f151a = new k();

    /* renamed from: b, reason: collision with root package name */
    private Context f152b;
    private boolean c = false;
    private boolean d = false;

    private k() {
    }

    public static k a() {
        return f151a;
    }

    private void d() {
        this.c = true;
    }

    private synchronized void e() {
        this.d = true;
    }

    public void a(Context context) {
        if (context == null || b()) {
            return;
        }
        this.f152b = context;
        d();
        start();
        com.baidu.mobstat.a.c.a("**************load caceh**start********");
    }

    public boolean b() {
        return this.c;
    }

    public synchronized boolean c() {
        return this.d;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(19);
        while (!this.d) {
            l.a().a(this.f152b);
            b.a().d(this.f152b);
            b.a().c(this.f152b);
            e();
            synchronized (f151a) {
                try {
                    notifyAll();
                } catch (IllegalMonitorStateException e) {
                    com.baidu.mobstat.a.c.a("stat", e);
                }
            }
            b.a().a(this.f152b);
            l.a().b(this.f152b);
            com.baidu.mobstat.a.c.a("**************load caceh**end********");
        }
    }
}
