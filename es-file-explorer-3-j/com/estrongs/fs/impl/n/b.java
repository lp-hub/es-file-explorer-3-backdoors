package com.estrongs.fs.impl.n;

import java.util.List;

/* loaded from: classes.dex */
class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f3141a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f3142b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, List list) {
        this.f3142b = aVar;
        this.f3141a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3142b.b(this.f3141a);
    }
}
