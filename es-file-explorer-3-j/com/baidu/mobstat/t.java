package com.baidu.mobstat;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f168a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(s sVar) {
        this.f168a = sVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (k.a().c()) {
            return;
        }
        synchronized (k.a()) {
            try {
                k.a().wait();
            } catch (InterruptedException e) {
                com.baidu.mobstat.a.c.a("stat", e);
            }
        }
    }
}
