package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class s implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f763a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(PopNoteEditor popNoteEditor) {
        this.f763a = popNoteEditor;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
