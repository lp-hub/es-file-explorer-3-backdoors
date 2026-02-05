package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.android.pop.esclasses.ESActivity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ap implements com.estrongs.android.ui.b.bg {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESActivity f1195a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.pcs.aw f1196b;
    final /* synthetic */ List c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(ESActivity eSActivity, com.estrongs.android.ui.pcs.aw awVar, List list) {
        this.f1195a = eSActivity;
        this.f1196b = awVar;
        this.c = list;
    }

    @Override // com.estrongs.android.ui.b.bg
    public void a(String str, boolean z) {
        if (z) {
            com.estrongs.android.pop.q.a(this.f1195a).u(str);
        }
        String str2 = this.f1196b.h() + "/files/" + str;
        aj.a((Activity) this.f1195a, (List<com.estrongs.fs.g>) this.c, com.estrongs.fs.d.m(str2), true);
        if (com.estrongs.fs.a.b.a().g(str2) == null && com.estrongs.fs.a.b.a().g(com.estrongs.android.util.ak.bx(str2)) == null) {
            com.estrongs.fs.a.b.a().a(new com.estrongs.fs.n(str2, false));
        }
    }
}
