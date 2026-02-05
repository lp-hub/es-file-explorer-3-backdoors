package com.estrongs.android.pop.app.imageviewer;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bg implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f969a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(ViewImage21 viewImage21) {
        this.f969a = viewImage21;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f969a.c();
    }
}
