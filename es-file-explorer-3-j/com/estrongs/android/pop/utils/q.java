package com.estrongs.android.pop.utils;

import java.util.List;

/* loaded from: classes.dex */
class q extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f1273a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f1274b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(o oVar, List list) {
        this.f1274b = oVar;
        this.f1273a = list;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f1273a.size()) {
                return;
            }
            com.estrongs.fs.impl.local.h.b((String[]) this.f1273a.get(i2));
            i = i2 + 1;
        }
    }
}
