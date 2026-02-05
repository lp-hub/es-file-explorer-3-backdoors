package com.estrongs.android.pop.app.editor;

import android.os.AsyncTask;

/* loaded from: classes.dex */
class ag extends AsyncTask<Object, Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f728a;

    private ag(PopNoteEditor popNoteEditor) {
        this.f728a = popNoteEditor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ag(PopNoteEditor popNoteEditor, g gVar) {
        this(popNoteEditor);
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object... objArr) {
        try {
            this.f728a.i();
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
    }
}
