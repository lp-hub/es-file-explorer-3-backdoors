package com.estrongs.android.ui.b;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bo implements com.estrongs.a.a.h {

    /* renamed from: a, reason: collision with root package name */
    long f1669a = -1;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bk f1670b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo(bk bkVar) {
        this.f1670b = bkVar;
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        boolean z;
        dm dmVar;
        if (this.f1669a == -1 || System.currentTimeMillis() - this.f1669a > 200) {
            this.f1669a = System.currentTimeMillis();
            z = this.f1670b.n;
            if (z) {
                this.f1670b.e();
                return;
            }
            bk bkVar = this.f1670b;
            dmVar = this.f1670b.k;
            bkVar.a((List<com.estrongs.fs.b.x>) dmVar.a());
        }
    }
}
