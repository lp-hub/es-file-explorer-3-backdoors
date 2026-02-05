package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bp extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bo f2327a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(bo boVar) {
        this.f2327a = boVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        boolean z;
        z = this.f2327a.c.A;
        if (z) {
            switch (message.what) {
                case 1:
                    this.f2327a.a(message.arg2, message.obj);
                    return;
                case 2:
                    this.f2327a.b(message.arg2, message.obj);
                    return;
                case 3:
                    this.f2327a.a(message.arg2);
                    return;
                default:
                    return;
            }
        }
    }
}
