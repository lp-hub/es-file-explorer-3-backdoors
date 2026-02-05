package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ej implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f1780a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ei f1781b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ej(ei eiVar, Context context) {
        this.f1781b = eiVar;
        this.f1780a = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        el elVar;
        el elVar2;
        elVar = this.f1781b.f1779b;
        String[] b2 = elVar.b();
        if (b2.length > 0) {
            com.estrongs.android.pop.q a2 = com.estrongs.android.pop.q.a(this.f1780a);
            elVar2 = this.f1781b.f1779b;
            a2.x(com.estrongs.fs.impl.local.h.a(elVar2.a()));
            try {
                com.estrongs.fs.impl.local.h.b(b2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.f1781b.dismiss();
    }
}
