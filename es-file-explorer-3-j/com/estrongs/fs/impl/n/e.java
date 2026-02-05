package com.estrongs.fs.impl.n;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f3147a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f3148b;
    final /* synthetic */ a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(a aVar, String str, String str2) {
        this.c = aVar;
        this.f3147a = str;
        this.f3148b = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        obj = this.c.f3140a;
        synchronized (obj) {
            List<String> f = this.c.f();
            int indexOf = f.indexOf(this.f3147a);
            if (indexOf >= 0) {
                f.remove(indexOf);
                f.add(indexOf, this.f3148b);
                this.c.c(f);
            }
        }
    }
}
