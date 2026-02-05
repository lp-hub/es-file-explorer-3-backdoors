package com.estrongs.android.ui.b;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bn extends dm {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bk f1668a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bn(bk bkVar, List list, com.estrongs.fs.d dVar, boolean z) {
        super(list, dVar, z);
        this.f1668a = bkVar;
    }

    @Override // com.estrongs.fs.b.w, com.estrongs.a.a
    public boolean task() {
        boolean z;
        dm dmVar;
        boolean task = super.task();
        z = this.f1668a.n;
        if (z) {
            this.f1668a.e();
        } else {
            bk bkVar = this.f1668a;
            dmVar = this.f1668a.k;
            bkVar.a((List<com.estrongs.fs.b.x>) dmVar.a());
        }
        return task;
    }
}
