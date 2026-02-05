package com.estrongs.android.pop.bt;

import java.util.TimerTask;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f1111a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(i iVar) {
        this.f1111a = iVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        this.f1111a.a();
    }
}
