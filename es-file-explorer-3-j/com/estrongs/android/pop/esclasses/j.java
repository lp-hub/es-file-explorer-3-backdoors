package com.estrongs.android.pop.esclasses;

import android.os.Handler;
import android.os.Message;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESScrollView f1141a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(ESScrollView eSScrollView) {
        this.f1141a = eSScrollView;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        View view;
        m mVar;
        m mVar2;
        m mVar3;
        m mVar4;
        m mVar5;
        m mVar6;
        super.handleMessage(message);
        switch (message.what) {
            case 1:
                view = this.f1141a.c;
                if (view.getMeasuredHeight() <= this.f1141a.getScrollY() + this.f1141a.getHeight()) {
                    mVar5 = this.f1141a.d;
                    if (mVar5 != null) {
                        mVar6 = this.f1141a.d;
                        mVar6.a();
                        return;
                    }
                    return;
                }
                if (this.f1141a.getScrollY() == 0) {
                    mVar3 = this.f1141a.d;
                    if (mVar3 != null) {
                        mVar4 = this.f1141a.d;
                        mVar4.b();
                        return;
                    }
                    return;
                }
                mVar = this.f1141a.d;
                if (mVar != null) {
                    mVar2 = this.f1141a.d;
                    mVar2.c();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
