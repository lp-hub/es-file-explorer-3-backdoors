package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class n implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f758a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(PopNoteEditor popNoteEditor) {
        this.f758a = popNoteEditor;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        new Thread(new o(this)).start();
        dialogInterface.dismiss();
    }
}
