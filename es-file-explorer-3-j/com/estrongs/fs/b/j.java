package com.estrongs.fs.b;

import com.baidu.sapi2.callback.LoginCallBack;
import java.util.Arrays;
import jcifs.smb.SmbConstants;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j extends Thread {

    /* renamed from: a, reason: collision with root package name */
    int f3006a = LoginCallBack.REQUEST_LOGINPROTECT;

    /* renamed from: b, reason: collision with root package name */
    final int f3007b = SmbConstants.DEFAULT_RESPONSE_TIMEOUT / this.f3006a;
    long[] c = new long[this.f3007b];
    int d = 0;
    int e = 0;
    long f = 0;
    final /* synthetic */ i g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(i iVar) {
        this.g = iVar;
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x000e */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z;
        boolean hasProgressListener;
        boolean z2;
        Arrays.fill(this.c, 0L);
        while (!z) {
            try {
                Thread.sleep(this.f3006a);
            } catch (Exception e) {
            }
            hasProgressListener = this.g.hasProgressListener();
            if (hasProgressListener) {
                Long valueOf = Long.valueOf(this.g.processData.f - this.g.x.longValue());
                this.f += valueOf.longValue() - this.c[this.e];
                this.c[this.e] = valueOf.longValue();
                this.g.x = Long.valueOf(this.g.processData.f);
                if (valueOf.longValue() != 0 || this.d <= 3) {
                    z2 = false;
                } else {
                    int i = ((this.e - 1) + this.f3007b) % this.f3007b;
                    long j = this.c[i];
                    int i2 = ((i - 1) + this.f3007b) % this.f3007b;
                    z2 = j == 0 && this.c[i2] == 0 && this.c[((i2 + (-1)) + this.f3007b) % this.f3007b] == 0;
                }
                if (this.g.processData.f >= this.g.processData.e || z2) {
                    this.g.processData.f197b = 0;
                } else {
                    this.g.processData.f197b = (int) (((float) this.f) / ((Math.min(this.d, this.f3007b) * this.f3006a) / 1000.0d));
                }
                if (this.g.getTaskStatus() == 2) {
                    this.g.onProgress(this.g.processData);
                }
            }
            this.d++;
            this.e = this.d % this.f3007b;
        }
    }
}
