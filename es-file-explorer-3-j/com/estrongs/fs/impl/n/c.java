package com.estrongs.fs.impl.n;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f3143a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f3144b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar, List list) {
        this.f3144b = aVar;
        this.f3143a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        obj = this.f3144b.f3140a;
        synchronized (obj) {
            List<String> f = this.f3144b.f();
            f.removeAll(this.f3143a);
            this.f3144b.c(f);
        }
    }
}
