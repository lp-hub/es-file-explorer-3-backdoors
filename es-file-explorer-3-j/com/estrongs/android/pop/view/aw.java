package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aw implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.pcs.v f1325a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ at f1326b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(at atVar, com.estrongs.android.ui.pcs.v vVar) {
        this.f1326b = atVar;
        this.f1325a = vVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1326b.b(this.f1325a);
    }
}
