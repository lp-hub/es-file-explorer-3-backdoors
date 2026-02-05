package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.os.Message;
import android.widget.Button;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2378a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(d dVar) {
        this.f2378a = dVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        boolean z;
        Button button;
        z = this.f2378a.k;
        if (z) {
            switch (message.what) {
                case 1:
                    this.f2378a.a(message.arg1 == 1, message.arg2, message.obj);
                    button = this.f2378a.q;
                    button.setEnabled(true);
                    return;
                case 2:
                    this.f2378a.b(message.arg1 == 1, message.arg2, message.obj);
                    return;
                default:
                    return;
            }
        }
    }
}
