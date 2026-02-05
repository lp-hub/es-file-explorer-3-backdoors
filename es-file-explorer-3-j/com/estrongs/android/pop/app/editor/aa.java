package com.estrongs.android.pop.app.editor;

import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aa implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f720a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(PopNoteEditor popNoteEditor) {
        this.f720a = popNoteEditor;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f720a.h();
        this.f720a.l();
        return true;
    }
}
