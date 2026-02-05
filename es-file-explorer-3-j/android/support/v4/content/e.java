package android.support.v4.content;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class e extends Handler {
    private e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ e(c cVar) {
        this();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        d dVar = (d) message.obj;
        switch (message.what) {
            case 1:
                dVar.f46a.c(dVar.f47b[0]);
                return;
            case 2:
                dVar.f46a.a((Object[]) dVar.f47b);
                return;
            default:
                return;
        }
    }
}
