package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.DialogInterface;
import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ay implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ az f1647a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ av f1648b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ay(av avVar, az azVar) {
        this.f1648b = avVar;
        this.f1647a = azVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        LinkedList<String> a2 = this.f1647a.a();
        context = this.f1648b.f1643b;
        com.estrongs.android.pop.q.a(context).e(a2);
        dialogInterface.dismiss();
    }
}
