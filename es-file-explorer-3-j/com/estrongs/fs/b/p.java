package com.estrongs.fs.b;

/* loaded from: classes.dex */
class p extends Thread {

    /* renamed from: a, reason: collision with root package name */
    int f3016a = 500;

    /* renamed from: b, reason: collision with root package name */
    long f3017b = 0;
    final /* synthetic */ o c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar) {
        this.c = oVar;
    }

    /* JADX WARN: Incorrect condition in loop: B:2:0x0006 */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z;
        while (!z) {
            try {
                Thread.sleep(this.f3016a);
            } catch (Exception e) {
            }
            if (this.f3017b != this.c.processData.d) {
                this.f3017b = this.c.processData.d;
                if (this.c.getTaskStatus() == 2) {
                    this.c.onProgress(this.c.processData);
                }
            }
        }
    }
}
