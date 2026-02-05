package com.baidu.mobstat;

import android.content.Context;

/* loaded from: classes.dex */
class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f139a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f140b;
    final /* synthetic */ int c;
    final /* synthetic */ long d;
    final /* synthetic */ Context e;
    final /* synthetic */ d f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, String str, String str2, int i, long j, Context context) {
        this.f = dVar;
        this.f139a = str;
        this.f140b = str2;
        this.c = i;
        this.d = j;
        this.e = context;
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
        b.a().a(this.f139a, this.f140b, this.c, this.d, 0L);
        b.a().b(this.e);
    }
}
