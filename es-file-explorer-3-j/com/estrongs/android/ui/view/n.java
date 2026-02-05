package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class n extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2641a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ m f2642b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(m mVar, String str) {
        this.f2642b = mVar;
        this.f2641a = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean a2;
        Handler handler;
        Handler handler2;
        a2 = this.f2642b.f2640a.a(this.f2641a);
        handler = this.f2642b.f2640a.r;
        Message obtainMessage = handler.obtainMessage(CreateOAuthNetDisk.e);
        obtainMessage.obj = Boolean.valueOf(a2);
        handler2 = this.f2642b.f2640a.r;
        handler2.sendMessage(obtainMessage);
    }
}
