package com.baidu.mobstat;

import android.content.Context;

/* loaded from: classes.dex */
class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f143a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f144b;
    final /* synthetic */ long c;
    final /* synthetic */ Context d;
    final /* synthetic */ d e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(d dVar, String str, String str2, long j, Context context) {
        this.e = dVar;
        this.f143a = str;
        this.f144b = str2;
        this.c = j;
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
        String a2 = this.e.a(this.f143a, this.f144b);
        i iVar = this.e.f137a.get(a2);
        if (iVar == null) {
            com.baidu.mobstat.a.c.b("stat", "EventStat: event_id[" + this.f143a + "] with label[" + this.f144b + "] is not started or alread done.");
            return;
        }
        if (!this.f143a.equals(iVar.f147a) || !this.f144b.equals(iVar.f148b)) {
            com.baidu.mobstat.a.c.a("stat", "EventStat: Wrong Case, eventId/label pair not match");
            return;
        }
        this.e.f137a.remove(a2);
        long j = this.c - iVar.c;
        if (j <= 0) {
            com.baidu.mobstat.a.c.a("stat", "EventStat: Wrong Case, Duration must be positive");
        } else {
            b.a().a(this.f143a, this.f144b, 1, iVar.c, j);
            b.a().b(this.d);
        }
    }
}
