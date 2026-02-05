package com.estrongs.android.pop.utils;

import android.app.Activity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bb implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1218a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ List f1219b;
    final /* synthetic */ com.estrongs.fs.g c;
    final /* synthetic */ boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(Activity activity, List list, com.estrongs.fs.g gVar, boolean z) {
        this.f1218a = activity;
        this.f1219b = list;
        this.c = gVar;
        this.d = z;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (z) {
            aj.c(this.f1218a, this.f1219b, this.c, this.d);
        }
    }
}
