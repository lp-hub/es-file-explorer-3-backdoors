package com.estrongs.android.ui.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ff implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ew f1815a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ff(ew ewVar) {
        this.f1815a = ewVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1815a.dismiss();
    }
}
