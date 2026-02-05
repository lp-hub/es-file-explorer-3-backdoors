package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.LinearLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gd extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ gc f2158a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gd(gc gcVar, Context context) {
        super(context);
        this.f2158a = gcVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getKeyCode() == 4) {
            this.f2158a.d();
            return true;
        }
        if (keyEvent.getKeyCode() != 82) {
            return super.dispatchKeyEvent(keyEvent);
        }
        z = this.f2158a.h;
        if (!z) {
            return true;
        }
        this.f2158a.d();
        return true;
    }
}
