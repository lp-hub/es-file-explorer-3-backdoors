package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements DialogInterface.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f617a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar) {
        this.f617a = lVar;
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        com.estrongs.io.a.a.a aVar;
        if (keyEvent.getKeyCode() != 4) {
            return false;
        }
        aVar = this.f617a.n;
        aVar.d();
        this.f617a.c();
        return true;
    }
}
