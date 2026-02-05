package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class l extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CreateOAuthNetDisk f2639a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(CreateOAuthNetDisk createOAuthNetDisk) {
        this.f2639a = createOAuthNetDisk;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        str = this.f2639a.i;
        String m = com.estrongs.fs.impl.i.b.m(str);
        if (m == null) {
            handler3 = this.f2639a.r;
            Message obtainMessage = handler3.obtainMessage(CreateOAuthNetDisk.f2569a);
            obtainMessage.obj = null;
            handler4 = this.f2639a.r;
            handler4.sendMessage(obtainMessage);
            return;
        }
        handler = this.f2639a.r;
        Message obtainMessage2 = handler.obtainMessage(CreateOAuthNetDisk.f2570b);
        obtainMessage2.obj = m;
        handler2 = this.f2639a.r;
        handler2.sendMessage(obtainMessage2);
    }
}
