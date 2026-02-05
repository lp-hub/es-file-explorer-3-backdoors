package com.estrongs.android.pop.app.editor;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f767a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(PopNoteEditor popNoteEditor) {
        this.f767a = popNoteEditor;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        PopNoteEditor popNoteEditor = this.f767a;
        i = this.f767a.R;
        new an(popNoteEditor, i, new x(this)).a();
    }
}
