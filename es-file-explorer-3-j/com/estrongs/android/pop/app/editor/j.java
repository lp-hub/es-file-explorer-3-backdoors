package com.estrongs.android.pop.app.editor;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f754a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(PopNoteEditor popNoteEditor) {
        this.f754a = popNoteEditor;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        String str;
        PopNoteEditor popNoteEditor = this.f754a;
        str = this.f754a.d;
        new com.estrongs.android.util.b(popNoteEditor, str, new k(this)).a();
        this.f754a.l();
        return true;
    }
}
