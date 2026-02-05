package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aq implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f741a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(an anVar) {
        this.f741a = anVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f741a.d = i;
    }
}
