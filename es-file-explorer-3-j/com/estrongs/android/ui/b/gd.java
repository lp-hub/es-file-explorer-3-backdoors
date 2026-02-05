package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gd implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ga f1849a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gd(ga gaVar) {
        this.f1849a = gaVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        com.estrongs.android.util.x xVar;
        com.estrongs.android.util.x xVar2;
        i2 = this.f1849a.l;
        if (i2 == 3) {
            xVar = this.f1849a.p;
            if (xVar != null) {
                xVar2 = this.f1849a.p;
                xVar2.b();
            }
        }
        this.f1849a.b();
    }
}
