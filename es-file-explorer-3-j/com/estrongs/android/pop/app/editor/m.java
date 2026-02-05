package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class m implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f757a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(PopNoteEditor popNoteEditor) {
        this.f757a = popNoteEditor;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
