package com.estrongs.android.widget;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f2940a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(g gVar) {
        this.f2940a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            dialogInterface.dismiss();
        } catch (Exception e) {
        }
    }
}
