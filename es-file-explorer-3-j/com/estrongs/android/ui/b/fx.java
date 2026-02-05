package com.estrongs.android.ui.b;

/* loaded from: classes.dex */
class fx implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1838a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fw f1839b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fx(fw fwVar, String str) {
        this.f1839b = fwVar;
        this.f1838a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f1839b.f1837a.getContext(), this.f1838a, 1).show();
    }
}
