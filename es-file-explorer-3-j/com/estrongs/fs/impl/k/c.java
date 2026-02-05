package com.estrongs.fs.impl.k;

import com.estrongs.fs.b.ac;

/* loaded from: classes.dex */
final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ac f3091a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(ac acVar) {
        this.f3091a = acVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3091a.execute();
    }
}
