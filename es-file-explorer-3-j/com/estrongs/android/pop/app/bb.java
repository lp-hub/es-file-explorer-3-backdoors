package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class bb implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ba f520a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(ba baVar) {
        this.f520a = baVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        com.estrongs.android.ui.a.o oVar;
        oVar = this.f520a.f519b.f470a.f350b;
        oVar.notifyDataSetChanged();
    }
}
