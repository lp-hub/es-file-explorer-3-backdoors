package com.estrongs.android.pop.app.editor;

import android.view.View;

/* loaded from: classes.dex */
class v implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f766a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(PopNoteEditor popNoteEditor) {
        this.f766a = popNoteEditor;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean e;
        e = this.f766a.e();
        if (e) {
            this.f766a.b(false);
        }
    }
}
