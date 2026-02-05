package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class p implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f760a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(PopNoteEditor popNoteEditor) {
        this.f760a = popNoteEditor;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f760a.finish();
    }
}
