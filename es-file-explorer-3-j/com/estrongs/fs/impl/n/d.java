package com.estrongs.fs.impl.n;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f3145a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f3146b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar, List list) {
        this.f3146b = aVar;
        this.f3145a = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        obj = this.f3146b.f3140a;
        synchronized (obj) {
            List<String> f = this.f3146b.f();
            for (int i = 0; i < this.f3145a.size(); i++) {
                if (!f.contains(this.f3145a.get(i))) {
                    f.add(this.f3145a.get(i));
                }
            }
            this.f3146b.c(f);
        }
    }
}
