package com.estrongs.android.ui.b;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dr extends dm {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dn f1751a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dr(dn dnVar, List list, com.estrongs.fs.d dVar) {
        super(list, dVar);
        this.f1751a = dnVar;
    }

    @Override // com.estrongs.fs.b.w, com.estrongs.a.a
    public boolean task() {
        dm dmVar;
        boolean task = super.task();
        if (this.f1751a.i) {
            this.f1751a.i();
        } else {
            dn dnVar = this.f1751a;
            dmVar = this.f1751a.o;
            dnVar.a((List<com.estrongs.fs.b.x>) dmVar.a());
        }
        return task;
    }
}
