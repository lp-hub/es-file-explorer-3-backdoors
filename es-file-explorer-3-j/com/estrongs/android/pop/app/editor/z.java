package com.estrongs.android.pop.app.editor;

import android.view.MotionEvent;
import android.view.View;
import com.estrongs.android.pop.esclasses.ESScrollMenuView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f770a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(PopNoteEditor popNoteEditor) {
        this.f770a = popNoteEditor;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        ObservableScrollView observableScrollView;
        ESScrollMenuView eSScrollMenuView;
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 0) {
            observableScrollView = this.f770a.k;
            observableScrollView.a();
        }
        eSScrollMenuView = this.f770a.s;
        if (eSScrollMenuView.getVisibility() != 0) {
            return false;
        }
        this.f770a.l();
        return false;
    }
}
