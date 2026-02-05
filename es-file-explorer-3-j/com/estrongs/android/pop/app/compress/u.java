package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements DialogInterface.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f626a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(l lVar) {
        this.f626a = lVar;
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        com.estrongs.io.a.a.a aVar;
        if (keyEvent.getKeyCode() != 4) {
            return false;
        }
        aVar = this.f626a.n;
        aVar.d();
        this.f626a.c();
        return true;
    }
}
