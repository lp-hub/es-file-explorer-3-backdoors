package com.estrongs.android.ui.preference.fragments;

import com.estrongs.android.view.bt;

/* loaded from: classes.dex */
class p implements bt {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f2480a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f2481b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(n nVar, com.estrongs.android.widget.g gVar) {
        this.f2481b = nVar;
        this.f2480a = gVar;
    }

    @Override // com.estrongs.android.view.bt
    public void a(com.estrongs.fs.g gVar) {
        this.f2481b.f2476a.setText(gVar.getPath());
        this.f2480a.i();
    }
}
