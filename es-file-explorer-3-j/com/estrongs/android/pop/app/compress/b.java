package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class b implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f601a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f601a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f601a.b();
    }
}
