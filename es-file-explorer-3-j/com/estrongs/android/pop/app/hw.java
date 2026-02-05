package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class hw extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommItemImageViewer f887a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hw(RecommItemImageViewer recommItemImageViewer) {
        this.f887a = recommItemImageViewer;
    }

    @Override // android.os.Handler
    public synchronized void handleMessage(Message message) {
        switch (message.arg1) {
            case 123468:
                this.f887a.a(message.obj);
        }
    }
}
