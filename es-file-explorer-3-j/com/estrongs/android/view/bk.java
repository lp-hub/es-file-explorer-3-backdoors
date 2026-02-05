package com.estrongs.android.view;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bk implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bo f2775a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ar f2776b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bk(ar arVar, bo boVar) {
        this.f2776b = arVar;
        this.f2775a = boVar;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        Handler handler;
        Handler handler2;
        Handler handler3;
        boolean z = false;
        try {
            handler3 = this.f2776b.ac;
            handler3.getLooper();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            }
        } catch (Exception e) {
        }
        com.estrongs.fs.b.t tVar = (com.estrongs.fs.b.t) aVar;
        if (i == 1 && i2 == 2) {
            if (z) {
                this.f2776b.p();
                return;
            }
            this.f2775a.c = new bl(this);
            handler2 = this.f2776b.ac;
            handler2.post(this.f2775a.c);
            return;
        }
        if (i2 == 5 || i2 == 4) {
            try {
                this.f2776b.ah = false;
                String str = this.f2776b.w;
                if (!tVar.f3024b.getPath().equals(str)) {
                    this.f2776b.ak = null;
                    return;
                }
                if (z) {
                    this.f2776b.a(tVar, i2, str);
                } else {
                    this.f2775a.d = new bm(this, tVar, i2, str);
                    handler = this.f2776b.ac;
                    handler.post(this.f2775a.d);
                }
            } finally {
                this.f2775a.f2783b.open();
            }
        }
    }
}
