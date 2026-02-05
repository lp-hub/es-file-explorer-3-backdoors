package com.estrongs.android.pop.app.editor;

import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;

/* loaded from: classes.dex */
class t implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f764a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(PopNoteEditor popNoteEditor) {
        this.f764a = popNoteEditor;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        EditText editText;
        ObservableScrollView observableScrollView;
        EditText editText2;
        float y = motionEvent.getY();
        editText = this.f764a.i;
        if (y <= editText.getHeight()) {
            return false;
        }
        observableScrollView = this.f764a.j;
        motionEvent.setLocation(observableScrollView.getWidth(), motionEvent.getY());
        editText2 = this.f764a.i;
        editText2.dispatchTouchEvent(motionEvent);
        return false;
    }
}
