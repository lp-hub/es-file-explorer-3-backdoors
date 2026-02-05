package com.estrongs.fs.b;

/* loaded from: classes.dex */
class av implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2989a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ au f2990b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(au auVar, String str) {
        this.f2990b = auVar;
        this.f2989a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f2990b.f2988a.f2986a, this.f2989a, 1).show();
    }
}
