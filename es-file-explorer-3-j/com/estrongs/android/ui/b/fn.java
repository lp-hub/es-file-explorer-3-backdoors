package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fn implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ew f1824a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fn(ew ewVar) {
        this.f1824a = ewVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.a.a aVar;
        aVar = this.f1824a.r;
        com.estrongs.android.ui.notification.e.b(aVar.getTaskId());
        this.f1824a.dismiss();
    }
}
