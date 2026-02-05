package com.estrongs.android.ui.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fz implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1842a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fr f1843b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fz(fr frVar, String str) {
        this.f1843b = frVar;
        this.f1842a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f1843b.getContext(), this.f1842a, 1).show();
    }
}
