package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ac implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f578a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(z zVar) {
        this.f578a = zVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f578a.a();
    }
}
