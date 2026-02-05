package com.estrongs.a.b;

import com.estrongs.fs.b.as;

/* loaded from: classes.dex */
class g extends k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f205a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(e eVar, as asVar) {
        super(eVar.f203a, asVar);
        this.f205a = eVar;
    }

    @Override // com.estrongs.a.b.k, java.lang.Runnable
    public void run() {
        this.f205a.f203a.a(this.f209b);
    }
}
