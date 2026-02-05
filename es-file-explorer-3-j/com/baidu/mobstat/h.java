package com.baidu.mobstat;

import android.content.Context;

/* loaded from: classes.dex */
class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ long f145a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f146b;
    final /* synthetic */ String c;
    final /* synthetic */ Context d;
    final /* synthetic */ d e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(d dVar, long j, String str, String str2, Context context) {
        this.e = dVar;
        this.f145a = j;
        this.f146b = str;
        this.c = str2;
        this.d = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!k.a().c()) {
            synchronized (k.a()) {
                try {
                    k.a().wait();
                } catch (InterruptedException e) {
                    com.baidu.mobstat.a.c.a("stat", e);
                }
            }
        }
        if (this.f145a <= 0) {
            com.baidu.mobstat.a.c.a("stat", "EventStat: Wrong Case, Duration must be positive");
        } else {
            b.a().a(this.f146b, this.c, 1, System.currentTimeMillis(), this.f145a);
            b.a().b(this.d);
        }
    }
}
