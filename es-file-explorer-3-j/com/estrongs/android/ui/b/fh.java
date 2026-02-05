package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fh implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ew f1818a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fh(ew ewVar) {
        this.f1818a = ewVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.a.a aVar;
        com.estrongs.a.a aVar2;
        DialogInterface.OnDismissListener onDismissListener;
        DialogInterface.OnDismissListener onDismissListener2;
        boolean z;
        com.estrongs.a.a aVar3;
        Handler handler;
        boolean z2;
        aVar = this.f1818a.r;
        if (aVar.getTaskStatus() == 2) {
            z2 = this.f1818a.f1802b;
            if (z2) {
                this.f1818a.d();
                return;
            }
        }
        aVar2 = this.f1818a.r;
        if (aVar2.getTaskStatus() == 3) {
            z = this.f1818a.f1802b;
            if (z) {
                aVar3 = this.f1818a.r;
                if (!aVar3.waitingDecision) {
                    this.f1818a.d();
                    return;
                } else {
                    handler = this.f1818a.s;
                    handler.postDelayed(this, 400L);
                    return;
                }
            }
        }
        onDismissListener = this.f1818a.m;
        if (onDismissListener != null) {
            onDismissListener2 = this.f1818a.m;
            onDismissListener2.onDismiss(this.f1818a);
        }
    }
}
