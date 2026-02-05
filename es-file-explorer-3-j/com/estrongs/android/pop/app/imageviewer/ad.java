package com.estrongs.android.pop.app.imageviewer;

import android.content.DialogInterface;

/* loaded from: classes.dex */
final class ad implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Runnable f936a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(Runnable runnable) {
        this.f936a = runnable;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -1:
                if (this.f936a != null) {
                    this.f936a.run();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
