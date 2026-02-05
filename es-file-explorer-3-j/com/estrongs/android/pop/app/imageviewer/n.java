package com.estrongs.android.pop.app.imageviewer;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class n extends Handler {
    public void a() {
        removeMessages(1);
    }

    public void a(Runnable runnable) {
        a(runnable, 0L);
    }

    public void a(Runnable runnable, long j) {
        if (runnable == null) {
            throw new NullPointerException();
        }
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = runnable;
        sendMessageDelayed(obtain, j);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                ((Runnable) message.obj).run();
                return;
            default:
                return;
        }
    }
}
