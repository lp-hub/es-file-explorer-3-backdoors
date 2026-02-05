package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dh implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dg f1402a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dh(dg dgVar) {
        this.f1402a = dgVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1402a.f1401a.F();
        if (!com.estrongs.android.pop.m.M) {
            try {
                com.estrongs.android.ui.guesture.b.a();
                this.f1402a.f1401a.I.postInvalidate();
                this.f1402a.f1401a.aL();
            } catch (Exception e) {
            }
        }
        if (com.estrongs.android.pop.utils.bs.a()) {
            this.f1402a.f1401a.m.b();
        }
        try {
            FileExplorerActivity.S();
            if (com.estrongs.android.pop.q.a(this.f1402a.f1401a).az() || FileExplorerActivity.Q()) {
                return;
            }
            this.f1402a.f1401a.h.post(new di(this));
        } catch (Exception e2) {
        }
    }
}
