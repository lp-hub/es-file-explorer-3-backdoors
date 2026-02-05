package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aa implements DialogInterface.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f576a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(z zVar) {
        this.f576a = zVar;
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        com.estrongs.io.a.a.b bVar;
        com.estrongs.io.a.a.b bVar2;
        if (i != 4) {
            return false;
        }
        bVar = this.f576a.v;
        if (bVar != null) {
            bVar2 = this.f576a.v;
            bVar2.d();
        }
        this.f576a.a();
        return false;
    }
}
