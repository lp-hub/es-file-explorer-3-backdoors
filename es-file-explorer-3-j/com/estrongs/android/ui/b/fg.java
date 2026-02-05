package com.estrongs.android.ui.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1816a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ew f1817b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fg(ew ewVar, String str) {
        this.f1817b = ewVar;
        this.f1816a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f1817b.getContext(), this.f1816a, 0).show();
    }
}
