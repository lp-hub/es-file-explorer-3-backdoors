package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ r f1032a;

    private v(r rVar) {
        this.f1032a = rVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|6|18|19|20|21|22|(3:24|25|26)(1:27)|13) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004e, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004f, code lost:
    
        r2.printStackTrace();
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        u uVar;
        while (true) {
            synchronized (r.a(this.f1032a)) {
                if (r.b(this.f1032a)) {
                    return;
                }
                if (r.a(this.f1032a).isEmpty()) {
                    try {
                        r.a(this.f1032a).wait();
                    } catch (InterruptedException e) {
                    }
                } else {
                    uVar = (u) r.a(this.f1032a).remove(0);
                }
            }
            Bitmap bitmap = null;
            bitmap = this.f1032a.a(uVar.f1030a);
            if (uVar.f1031b != null) {
                uVar.f1031b.a(uVar.f1030a, bitmap);
            }
        }
    }
}
