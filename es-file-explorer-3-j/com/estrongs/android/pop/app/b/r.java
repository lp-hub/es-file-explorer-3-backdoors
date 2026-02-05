package com.estrongs.android.pop.app.b;

import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f505a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(q qVar) {
        this.f505a = qVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f505a.a((Intent) null);
    }
}
