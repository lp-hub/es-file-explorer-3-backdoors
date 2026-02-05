package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class an extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2608a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ am f2609b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(am amVar, String str) {
        this.f2609b = amVar;
        this.f2608a = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        boolean c;
        Handler handler;
        Message obtainMessage;
        Handler handler2;
        Handler handler3;
        this.f2609b.f2607a.n = "auth_code:" + com.estrongs.android.util.aw.c(this.f2608a);
        PcsThirdPartOAuth pcsThirdPartOAuth = this.f2609b.f2607a;
        str = this.f2609b.f2607a.n;
        c = pcsThirdPartOAuth.c(str);
        if (c) {
            handler = this.f2609b.f2607a.o;
            obtainMessage = handler.obtainMessage(6);
        } else {
            handler3 = this.f2609b.f2607a.o;
            obtainMessage = handler3.obtainMessage(4);
        }
        handler2 = this.f2609b.f2607a.o;
        handler2.sendMessage(obtainMessage);
    }
}
