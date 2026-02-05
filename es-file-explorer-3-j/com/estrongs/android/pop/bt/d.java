package com.estrongs.android.pop.bt;

import java.util.TimerTask;

/* loaded from: classes.dex */
class d extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f1103a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.f1103a = cVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        this.f1103a.a();
    }
}
