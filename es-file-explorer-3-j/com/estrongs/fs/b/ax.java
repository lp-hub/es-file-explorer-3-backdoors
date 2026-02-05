package com.estrongs.fs.b;

/* loaded from: classes.dex */
class ax implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2993a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ au f2994b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(au auVar, String str) {
        this.f2994b = auVar;
        this.f2993a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f2994b.f2988a.f2986a, this.f2993a, 1).show();
    }
}
