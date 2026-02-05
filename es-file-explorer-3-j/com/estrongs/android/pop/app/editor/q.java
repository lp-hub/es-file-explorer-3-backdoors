package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class q implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f761a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(PopNoteEditor popNoteEditor) {
        this.f761a = popNoteEditor;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        this.f761a.b(true);
        dialogInterface.dismiss();
        PopNoteEditor popNoteEditor = this.f761a;
        i2 = this.f761a.Q;
        popNoteEditor.R = i2;
    }
}
