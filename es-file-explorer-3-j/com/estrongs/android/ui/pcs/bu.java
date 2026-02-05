package com.estrongs.android.ui.pcs;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bu implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f2334a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bu(bt btVar) {
        this.f2334a = btVar;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        com.estrongs.android.ui.b.ag agVar;
        if (i != 4) {
            return false;
        }
        agVar = this.f2334a.h;
        agVar.show();
        return false;
    }
}
