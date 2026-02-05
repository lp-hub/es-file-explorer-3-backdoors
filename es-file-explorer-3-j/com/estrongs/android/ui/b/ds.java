package com.estrongs.android.ui.b;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ds implements com.estrongs.a.a.h {

    /* renamed from: a, reason: collision with root package name */
    long f1752a = -1;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dn f1753b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ds(dn dnVar) {
        this.f1753b = dnVar;
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        dm dmVar;
        if (this.f1752a == -1 || System.currentTimeMillis() - this.f1752a > 200) {
            this.f1752a = System.currentTimeMillis();
            if (this.f1753b.i) {
                this.f1753b.i();
                return;
            }
            dn dnVar = this.f1753b;
            dmVar = this.f1753b.o;
            dnVar.a((List<com.estrongs.fs.b.x>) dmVar.a());
        }
    }
}
