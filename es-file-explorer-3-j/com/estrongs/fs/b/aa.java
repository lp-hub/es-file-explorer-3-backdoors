package com.estrongs.fs.b;

/* loaded from: classes.dex */
class aa extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f2960a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(z zVar) {
        this.f2960a = zVar;
    }

    /* JADX WARN: Incorrect condition in loop: B:2:0x0006 */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z;
        Object obj;
        while (!z) {
            try {
                Thread.sleep(300L);
            } catch (Exception e) {
            }
            obj = this.f2960a.g;
            synchronized (obj) {
                this.f2960a.f = true;
            }
        }
    }
}
