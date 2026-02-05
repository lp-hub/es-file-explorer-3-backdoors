package com.estrongs.android.pop.view.utils;

import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements com.estrongs.android.util.aa {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f1463a;

    /* renamed from: b, reason: collision with root package name */
    private long f1464b = 0;
    private long c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(n nVar) {
        this.f1463a = nVar;
    }

    private void a(com.estrongs.android.util.x xVar, int i) {
        Message message = new Message();
        message.arg1 = i;
        message.obj = xVar;
        this.f1463a.a(message, 0L);
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        ((v) xVar.d).q = 1;
        this.f1463a.h();
        a(xVar, 123462);
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        v vVar = (v) xVar.d;
        if (vVar.t != xVar.g()) {
            vVar.t = xVar.g();
            this.f1463a.h();
        }
        vVar.u = xVar.a();
        a(xVar, 123463);
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        v vVar = (v) xVar.d;
        if (th.getMessage() != null && th.getMessage().equals("UserCannelled")) {
            xVar.h();
            if (vVar.q == 5 || vVar.q == 1) {
                vVar.q = 0;
                this.f1463a.h();
                return;
            }
            return;
        }
        if (xVar.a() > this.f1464b) {
            this.f1464b = xVar.a();
            xVar.f();
        } else {
            if (this.c < 3) {
                xVar.f();
                this.c++;
                return;
            }
            if (vVar.q == 5 || vVar.q == 1) {
                vVar.q = 2;
                this.f1463a.h();
            }
            a(xVar, 123461);
        }
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        ((v) xVar.d).q = 3;
        this.f1463a.h();
        this.f1463a.a(xVar);
        a(xVar, 123464);
    }
}
