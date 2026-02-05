package com.estrongs.android.ui.view;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class t extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Bundle f2648a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ s f2649b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(s sVar, Bundle bundle) {
        this.f2649b = sVar;
        this.f2648a = bundle;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean a2;
        Handler handler;
        Handler handler2;
        a2 = this.f2649b.f2647a.a(this.f2648a);
        handler = this.f2649b.f2647a.r;
        Message obtainMessage = handler.obtainMessage(CreateOAuthServiceProvider.e);
        obtainMessage.obj = Boolean.valueOf(a2);
        handler2 = this.f2649b.f2647a.r;
        handler2.sendMessage(obtainMessage);
    }
}
