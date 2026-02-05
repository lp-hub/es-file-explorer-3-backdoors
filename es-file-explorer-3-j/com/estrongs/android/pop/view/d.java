package com.estrongs.android.pop.view;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1393a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(FileExplorerActivity fileExplorerActivity) {
        this.f1393a = fileExplorerActivity;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0 || i != 66) {
            return false;
        }
        this.f1393a.o();
        return true;
    }
}
