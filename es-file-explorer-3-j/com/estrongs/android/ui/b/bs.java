package com.estrongs.android.ui.b;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bs implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ br f1676a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bs(br brVar) {
        this.f1676a = brVar;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66) {
            return false;
        }
        this.f1676a.a();
        return true;
    }
}
