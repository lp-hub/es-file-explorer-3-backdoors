package com.estrongs.android.pop.app.editor;

import android.view.View;

/* loaded from: classes.dex */
class y extends com.estrongs.android.pop.app.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f769a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(PopNoteEditor popNoteEditor, View.OnTouchListener onTouchListener) {
        super(onTouchListener);
        this.f769a = popNoteEditor;
    }

    @Override // com.estrongs.android.pop.app.a
    public boolean a() {
        return true;
    }

    @Override // com.estrongs.android.pop.app.a
    public void b() {
        this.f769a.a(false);
    }

    @Override // com.estrongs.android.pop.app.a
    public void c() {
        this.f769a.a(true);
    }

    @Override // com.estrongs.android.pop.app.a
    public boolean d() {
        return true;
    }
}
