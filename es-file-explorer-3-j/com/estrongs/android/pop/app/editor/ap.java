package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ap implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f740a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(an anVar) {
        this.f740a = anVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ar arVar;
        ar arVar2;
        int i2;
        arVar = this.f740a.f738b;
        if (arVar != null) {
            arVar2 = this.f740a.f738b;
            i2 = this.f740a.d;
            arVar2.a(i2);
        }
        dialogInterface.dismiss();
    }
}
