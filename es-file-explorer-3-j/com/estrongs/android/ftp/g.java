package com.estrongs.android.ftp;

import android.os.Binder;

/* loaded from: classes.dex */
public class g extends Binder {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESFtpService f315a;

    public g(ESFtpService eSFtpService) {
        this.f315a = eSFtpService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ESFtpService a() {
        boolean unused = ESFtpService.d = false;
        return this.f315a;
    }
}
