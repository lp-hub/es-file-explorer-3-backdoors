package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fi implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ew f1819a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fi(ew ewVar) {
        this.f1819a = ewVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        com.estrongs.a.a aVar;
        com.estrongs.a.a aVar2;
        com.estrongs.a.a aVar3;
        DialogInterface.OnDismissListener onDismissListener;
        DialogInterface.OnDismissListener onDismissListener2;
        Handler handler;
        boolean z2;
        com.estrongs.a.a aVar4;
        Handler handler2;
        boolean z3;
        z = this.f1819a.j;
        if (z) {
            this.f1819a.d();
            return;
        }
        aVar = this.f1819a.r;
        if (aVar.getTaskStatus() == 2) {
            z3 = this.f1819a.f1802b;
            if (z3) {
                this.f1819a.d();
                return;
            }
        }
        aVar2 = this.f1819a.r;
        if (aVar2.getTaskStatus() == 3) {
            z2 = this.f1819a.f1802b;
            if (z2) {
                aVar4 = this.f1819a.r;
                if (!aVar4.waitingDecision) {
                    this.f1819a.d();
                    return;
                } else {
                    handler2 = this.f1819a.s;
                    handler2.postDelayed(this, 400L);
                    return;
                }
            }
        }
        aVar3 = this.f1819a.r;
        if (aVar3.getTaskStatus() == 1) {
            handler = this.f1819a.s;
            handler.postDelayed(this, 400L);
            return;
        }
        onDismissListener = this.f1819a.m;
        if (onDismissListener != null) {
            onDismissListener2 = this.f1819a.m;
            onDismissListener2.onDismiss(this.f1819a);
        }
    }
}
