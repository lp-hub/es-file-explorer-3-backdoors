package com.estrongs.android.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2767a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ar f2768b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(ar arVar, int i) {
        this.f2768b = arVar;
        this.f2767a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2768b.g.setSelection(this.f2767a);
        this.f2768b.g.setSelected(true);
    }
}
