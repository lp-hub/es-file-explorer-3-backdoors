package com.estrongs.android.widget;

import android.os.Handler;
import android.os.Message;
import com.baidu.sapi2.callback.LoginCallBack;

/* loaded from: classes.dex */
class bk extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ SlidingDrawer f2908a;

    private bk(SlidingDrawer slidingDrawer) {
        this.f2908a = slidingDrawer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bk(SlidingDrawer slidingDrawer, bf bfVar) {
        this(slidingDrawer);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case LoginCallBack.REQUEST_LOGINPROTECT /* 1000 */:
                this.f2908a.j();
                return;
            default:
                return;
        }
    }
}
