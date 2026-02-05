package com.estrongs.a.b;

import com.estrongs.android.pop.app.LocalFileSharingActivity;

/* loaded from: classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f204a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.f204a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        LocalFileSharingActivity.a();
    }
}
