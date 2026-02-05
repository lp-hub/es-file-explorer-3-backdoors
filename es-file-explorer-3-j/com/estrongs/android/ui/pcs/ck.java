package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ck extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cj f2356a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ck(cj cjVar) {
        this.f2356a = cjVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.f2356a.b(message.arg2, message.obj);
                return;
            case 2:
                this.f2356a.a(message.arg2, message.obj);
                return;
            case 3:
                this.f2356a.b();
                return;
            default:
                return;
        }
    }
}
