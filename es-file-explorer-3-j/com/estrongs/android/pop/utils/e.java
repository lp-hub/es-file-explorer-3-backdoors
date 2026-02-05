package com.estrongs.android.pop.utils;

/* loaded from: classes.dex */
class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f1254a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar) {
        this.f1254a = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f1254a.f1253b.d(this.f1254a.f1252a);
        } catch (Exception e) {
            this.f1254a.f1253b.f1251a.J();
            e.printStackTrace();
        }
    }
}
