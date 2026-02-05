package com.estrongs.android.ui.preference;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class c implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f2407a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ DirChoosePreference f2408b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(DirChoosePreference dirChoosePreference, com.estrongs.android.widget.g gVar) {
        this.f2408b = dirChoosePreference;
        this.f2407a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2408b.f2393a = this.f2407a.d().getAbsolutePath();
        dialogInterface.dismiss();
    }
}
