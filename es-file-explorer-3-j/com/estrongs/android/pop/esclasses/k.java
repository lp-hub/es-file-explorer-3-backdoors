package com.estrongs.android.pop.esclasses;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESScrollView f1142a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(ESScrollView eSScrollView) {
        this.f1142a = eSScrollView;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View view2;
        m mVar;
        Handler handler;
        Handler handler2;
        switch (motionEvent.getAction()) {
            case 0:
            default:
                return false;
            case 1:
                view2 = this.f1142a.c;
                if (view2 == null) {
                    return false;
                }
                mVar = this.f1142a.d;
                if (mVar == null) {
                    return false;
                }
                handler = this.f1142a.f1125a;
                handler2 = this.f1142a.f1125a;
                handler.sendMessageDelayed(handler2.obtainMessage(1), 200L);
                return false;
        }
    }
}
