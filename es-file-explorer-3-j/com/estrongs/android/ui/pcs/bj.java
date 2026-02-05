package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bj extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bi f2319a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(bi biVar) {
        this.f2319a = biVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        boolean z;
        z = this.f2319a.f2317a.A;
        if (z) {
            switch (message.what) {
                case 1:
                    this.f2319a.b(message.arg2, message.obj);
                    return;
                case 2:
                    this.f2319a.c(message.arg2, message.obj);
                    return;
                case 3:
                    this.f2319a.a(message.arg2, message.obj);
                    return;
                default:
                    return;
            }
        }
    }
}
