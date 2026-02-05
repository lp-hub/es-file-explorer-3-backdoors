package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ai extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2279a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(ah ahVar) {
        this.f2279a = ahVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.f2279a.f2277a.b()) {
            switch (message.what) {
                case 1:
                    this.f2279a.b(message.arg2, message.obj);
                    return;
                case 2:
                    this.f2279a.c(message.arg2, message.obj);
                    return;
                case 3:
                    this.f2279a.a(message.arg2, message.obj);
                    return;
                default:
                    return;
            }
        }
    }
}
