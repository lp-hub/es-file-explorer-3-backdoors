package com.estrongs.android.widget;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f2938a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(g gVar) {
        this.f2938a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            dialogInterface.dismiss();
        } catch (Exception e) {
        }
    }
}
