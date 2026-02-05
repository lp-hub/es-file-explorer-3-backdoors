package com.estrongs.android.ui.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class go implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ gi f2168a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public go(gi giVar) {
        this.f2168a = giVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        gp gpVar;
        gp gpVar2;
        this.f2168a.f = true;
        gpVar = this.f2168a.g;
        if (gpVar instanceof gu) {
            gpVar2 = this.f2168a.g;
            ((gu) gpVar2).d();
        }
    }
}
