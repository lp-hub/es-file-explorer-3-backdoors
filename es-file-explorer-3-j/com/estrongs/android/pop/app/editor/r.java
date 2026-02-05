package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class r implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f762a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(PopNoteEditor popNoteEditor) {
        this.f762a = popNoteEditor;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        new ae(this.f762a, null).start();
        dialogInterface.dismiss();
    }
}
