package com.estrongs.android.ui.view;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
class ar extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ aq f2615a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ar(aq aqVar, Context context) {
        super(context);
        this.f2615a = aqVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        this.f2615a.b();
        return true;
    }
}
