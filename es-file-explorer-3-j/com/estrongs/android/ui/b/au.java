package com.estrongs.android.ui.b;

import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class au implements com.estrongs.fs.c.b {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ at f1640a;

    /* renamed from: b, reason: collision with root package name */
    private long f1641b = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(at atVar) {
        this.f1640a = atVar;
    }

    @Override // com.estrongs.fs.c.b
    public void a(File file) {
        if (this.f1641b == -1 || System.currentTimeMillis() - this.f1641b > 300) {
            this.f1641b = System.currentTimeMillis();
            this.f1640a.publishProgress("" + this.f1640a.f1638a.c(), com.estrongs.fs.c.d.c(this.f1640a.f1638a.b()));
        }
    }
}
