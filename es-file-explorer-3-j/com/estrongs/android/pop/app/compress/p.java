package com.estrongs.android.pop.app.compress;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p extends com.estrongs.io.archive.d {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f620a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(l lVar, Context context, l lVar2, String str) {
        super(context, lVar2, str);
        this.f620a = lVar;
    }

    @Override // com.estrongs.io.archive.d
    public void a(String str) {
        com.estrongs.android.ui.b.ag agVar;
        this.f620a.a(str);
        agVar = this.f620a.o;
        agVar.show();
    }
}
