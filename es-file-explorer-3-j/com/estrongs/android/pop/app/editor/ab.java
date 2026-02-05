package com.estrongs.android.pop.app.editor;

import android.os.Handler;
import android.os.Message;
import android.view.MenuItem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ab implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f721a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(PopNoteEditor popNoteEditor) {
        this.f721a = popNoteEditor;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        Handler handler;
        Handler handler2;
        this.f721a.l();
        handler = this.f721a.S;
        Message obtainMessage = handler.obtainMessage(5, 3, 0);
        handler2 = this.f721a.S;
        handler2.sendMessage(obtainMessage);
        return true;
    }
}
