package com.estrongs.android.pop.view;

import com.estrongs.android.util.TypedMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class au implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1321a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ TypedMap f1322b;
    final /* synthetic */ at c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(at atVar, com.estrongs.fs.g gVar, TypedMap typedMap) {
        this.c = atVar;
        this.f1321a = gVar;
        this.f1322b = typedMap;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (z && com.estrongs.android.util.aw.b((CharSequence) str2)) {
            this.c.a(this.f1321a, this.f1322b);
            this.c.f1320a.z();
        }
    }
}
