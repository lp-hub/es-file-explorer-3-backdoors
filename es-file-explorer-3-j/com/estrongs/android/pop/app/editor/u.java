package com.estrongs.android.pop.app.editor;

import android.view.View;

/* loaded from: classes.dex */
class u implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f765a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(PopNoteEditor popNoteEditor) {
        this.f765a = popNoteEditor;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f765a.k();
    }
}
