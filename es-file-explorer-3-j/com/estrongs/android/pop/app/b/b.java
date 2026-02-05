package com.estrongs.android.pop.app.b;

import java.util.TimerTask;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f481a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f481a = aVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (this.f481a.h() != null) {
            a.a().a(false);
        }
    }
}
