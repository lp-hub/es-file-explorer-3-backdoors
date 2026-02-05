package com.estrongs.android.ui.drag;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f1951a;

    /* renamed from: b, reason: collision with root package name */
    private int f1952b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(d dVar) {
        this.f1951a = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.f1952b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        i iVar;
        boolean z;
        int i;
        i iVar2;
        Handler handler;
        boolean z2;
        int i2;
        i iVar3;
        Handler handler2;
        i iVar4;
        i iVar5;
        iVar = this.f1951a.O;
        if (iVar != null) {
            if (this.f1952b == 0) {
                iVar5 = this.f1951a.O;
                iVar5.a();
                this.f1951a.P = 0;
                return;
            }
            if (this.f1952b == 1) {
                iVar4 = this.f1951a.O;
                iVar4.b();
                this.f1951a.P = 0;
                return;
            }
            if (this.f1952b == 2) {
                z2 = this.f1951a.S;
                if (z2) {
                    return;
                }
                i2 = this.f1951a.P;
                if (i2 == 1) {
                    iVar3 = this.f1951a.O;
                    iVar3.c();
                    handler2 = this.f1951a.d;
                    handler2.postDelayed(this, 25L);
                    return;
                }
                return;
            }
            if (this.f1952b == 3) {
                z = this.f1951a.S;
                if (z) {
                    return;
                }
                i = this.f1951a.P;
                if (i == 1) {
                    iVar2 = this.f1951a.O;
                    iVar2.d();
                    handler = this.f1951a.d;
                    handler.postDelayed(this, 25L);
                }
            }
        }
    }
}
