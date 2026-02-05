package com.estrongs.android.pop.bt;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ OBEXFtpServerService f1104a;

    /* renamed from: b, reason: collision with root package name */
    private final a f1105b;

    public e(OBEXFtpServerService oBEXFtpServerService, a aVar) {
        this.f1104a = oBEXFtpServerService;
        this.f1105b = aVar;
    }

    public boolean a() {
        return this.f1105b.b();
    }

    public void b() {
        this.f1105b.c();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.f1105b.a();
        } catch (IOException e) {
        }
    }
}
