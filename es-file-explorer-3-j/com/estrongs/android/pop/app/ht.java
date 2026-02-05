package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class ht extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommItemDetailAcitivity f883a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ht(RecommItemDetailAcitivity recommItemDetailAcitivity) {
        this.f883a = recommItemDetailAcitivity;
    }

    @Override // android.os.Handler
    public synchronized void handleMessage(Message message) {
        switch (message.arg1) {
            case 123460:
                this.f883a.a(message.obj);
                break;
            case 123461:
                this.f883a.b(message.obj);
                break;
            case 123462:
                this.f883a.c(message.obj);
                break;
            case 123463:
                this.f883a.d(message.obj);
                break;
            case 123464:
                this.f883a.e(message.obj);
                break;
            case 123465:
                this.f883a.a(message.arg2);
                break;
            case 123467:
                this.f883a.f(message.obj);
                break;
        }
    }
}
