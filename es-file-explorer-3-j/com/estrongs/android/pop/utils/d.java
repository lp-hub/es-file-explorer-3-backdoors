package com.estrongs.android.pop.utils;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f1252a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f1253b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar, List list) {
        this.f1253b = cVar;
        this.f1252a = list;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        if (i2 == 5 || i2 == 4) {
            this.f1253b.f1251a.runOnUiThread(new e(this));
        }
    }
}
