package android.support.v4.app;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class f extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FragmentActivity f19a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(FragmentActivity fragmentActivity) {
        this.f19a = fragmentActivity;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                if (this.f19a.e) {
                    this.f19a.a(false);
                    return;
                }
                return;
            case 2:
                this.f19a.a();
                this.f19a.f10b.d();
                return;
            default:
                super.handleMessage(message);
                return;
        }
    }
}
