package com.estrongs.fs.a;

import java.util.List;

/* loaded from: classes.dex */
public class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2954a;

    public c(b bVar) {
        this.f2954a = bVar;
    }

    /* JADX WARN: Incorrect condition in loop: B:2:0x0006 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z;
        int i;
        d dVar;
        int i2;
        List list;
        List list2;
        while (!z) {
            i = this.f2954a.f;
            if (i >= 10000) {
                dVar = this.f2954a.f2952a;
                synchronized (dVar) {
                    while (true) {
                        i2 = this.f2954a.f;
                        if (i2 < 5000) {
                            break;
                        }
                        list = this.f2954a.e;
                        if (list.size() <= 0) {
                            break;
                        }
                        list2 = this.f2954a.e;
                        this.f2954a.a((String) list2.get(0), false, (String) null);
                    }
                }
                Thread.yield();
            } else {
                try {
                    Thread.currentThread();
                    Thread.sleep(10000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
