package com.estrongs.android.ui.e;

import android.content.Context;
import android.os.Handler;
import android.view.KeyEvent;
import android.widget.LinearLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gk extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ gi f2164a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gk(gi giVar, Context context) {
        super(context);
        this.f2164a = giVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        Handler handler;
        Runnable runnable;
        Handler handler2;
        Runnable runnable2;
        if (keyEvent.getKeyCode() == 4) {
            handler2 = this.f2164a.i;
            runnable2 = this.f2164a.j;
            handler2.post(runnable2);
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && keyEvent.getAction() == 0) {
            z = this.f2164a.f;
            if (z) {
                handler = this.f2164a.i;
                runnable = this.f2164a.j;
                handler.post(runnable);
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }
}
