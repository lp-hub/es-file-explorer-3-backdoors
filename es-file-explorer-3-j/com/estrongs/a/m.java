package com.estrongs.a;

import com.estrongs.fs.b.z;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f227a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar) {
        this.f227a = lVar;
    }

    @Override // com.estrongs.a.a.k
    public void a(a aVar, int i, int i2) {
        if (i2 == 4 || i2 == 5) {
            if (!(aVar instanceof z)) {
                aVar.recordSummary("end_time", Long.valueOf(System.currentTimeMillis()));
            }
            this.f227a.b(aVar);
        }
    }
}
