package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ao extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f2287a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(an anVar) {
        this.f2287a = anVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.f2287a.c.b()) {
            switch (message.what) {
                case 1:
                    this.f2287a.a(message.arg2, message.obj);
                    return;
                case 2:
                    this.f2287a.b(message.arg2, message.obj);
                    return;
                case 3:
                    this.f2287a.a(message.arg2);
                    return;
                default:
                    return;
            }
        }
    }
}
