package com.estrongs.android.pop.app.compress;

/* loaded from: classes.dex */
class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f624a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(q qVar) {
        this.f624a = qVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f624a.f621a.f();
        } catch (Exception e) {
        }
    }
}
