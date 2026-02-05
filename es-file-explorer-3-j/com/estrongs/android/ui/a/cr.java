package com.estrongs.android.ui.a;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cr extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cp f1572a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cr(cp cpVar) {
        this.f1572a = cpVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Handler handler;
        super.handleMessage(message);
        Message message2 = new Message();
        message2.what = message.what;
        message2.arg1 = message.arg1;
        if ((message.what == 1 && message.arg1 == com.estrongs.android.ui.d.e.a()) ? false : true) {
            handler = this.f1572a.e;
            handler.sendMessage(message2);
        }
        if (message.what == 1) {
            this.f1572a.c();
        }
    }
}
