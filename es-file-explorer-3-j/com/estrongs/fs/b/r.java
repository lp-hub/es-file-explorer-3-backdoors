package com.estrongs.fs.b;

import com.baidu.sapi2.callback.LoginCallBack;
import jcifs.smb.SmbConstants;

/* loaded from: classes.dex */
class r extends Thread {

    /* renamed from: a, reason: collision with root package name */
    int f3020a = LoginCallBack.REQUEST_LOGINPROTECT;

    /* renamed from: b, reason: collision with root package name */
    int f3021b = SmbConstants.DEFAULT_RESPONSE_TIMEOUT / this.f3020a;
    long[] c = new long[this.f3021b];
    long d = 0;
    final /* synthetic */ q e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(q qVar) {
        this.e = qVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean hasProgressListener;
        while (!this.e.c) {
            this.d++;
            try {
                Thread.sleep(this.f3020a);
            } catch (Exception e) {
            }
            hasProgressListener = this.e.hasProgressListener();
            if (hasProgressListener) {
                for (int i = 1; i < this.f3021b; i++) {
                    this.c[i - 1] = this.c[i];
                }
                this.c[this.f3021b - 1] = Long.valueOf(this.e.processData.f - this.e.g.longValue()).longValue();
                this.e.g = Long.valueOf(this.e.processData.f);
                int i2 = 0;
                for (int i3 = 0; i3 < this.f3021b; i3++) {
                    i2 = (int) (i2 + this.c[i3]);
                }
                if (this.e.processData.f >= this.e.processData.e) {
                    this.e.processData.f197b = 0;
                } else {
                    this.e.processData.f197b = (int) (i2 / (((this.d < ((long) this.f3021b) ? this.d : this.f3021b) * this.f3020a) / 1000.0d));
                }
                if (this.e.getTaskStatus() == 2) {
                    this.e.onProgress(this.e.processData);
                }
            }
        }
    }
}
