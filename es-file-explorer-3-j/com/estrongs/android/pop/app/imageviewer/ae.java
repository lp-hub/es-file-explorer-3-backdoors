package com.estrongs.android.pop.app.imageviewer;

import android.app.Activity;
import android.os.Handler;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ae extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.pop.app.imageviewer.gallery.c f937a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Handler f938b;
    final /* synthetic */ Activity c;
    final /* synthetic */ View d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(com.estrongs.android.pop.app.imageviewer.gallery.c cVar, Handler handler, Activity activity, View view) {
        this.f937a = cVar;
        this.f938b = handler;
        this.c = activity;
        this.d = view;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.f937a.o();
        this.f937a.i();
        this.f938b.post(new af(this));
    }
}
