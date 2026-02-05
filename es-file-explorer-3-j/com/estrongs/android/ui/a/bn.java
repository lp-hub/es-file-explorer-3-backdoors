package com.estrongs.android.ui.a;

import android.os.Handler;
import android.os.Message;
import android.view.View;

/* loaded from: classes.dex */
class bn implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1531a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f1532b;
    final /* synthetic */ s c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(s sVar, int i, int i2) {
        this.c = sVar;
        this.f1531a = i;
        this.f1532b = i2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Handler handler;
        Message message = new Message();
        message.what = 0;
        message.arg1 = this.f1531a;
        message.arg2 = this.f1532b;
        handler = this.c.n;
        handler.sendMessage(message);
    }
}
