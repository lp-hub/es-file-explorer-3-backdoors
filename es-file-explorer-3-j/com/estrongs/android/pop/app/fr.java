package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class fr implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f817a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fp f818b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fr(fp fpVar, com.estrongs.android.widget.g gVar) {
        this.f818b = fpVar;
        this.f817a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f817a.i();
        this.f818b.f814b.setText(this.f817a.e());
    }
}
