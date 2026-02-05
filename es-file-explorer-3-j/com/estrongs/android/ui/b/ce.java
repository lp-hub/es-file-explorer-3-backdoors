package com.estrongs.android.ui.b;

import android.content.Context;
import android.gesture.Gesture;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.guesture.ESGesturePanel;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ce implements com.estrongs.android.ui.guesture.c {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cd f1693a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(cd cdVar) {
        this.f1693a = cdVar;
    }

    @Override // com.estrongs.android.ui.guesture.c
    public void a(Gesture gesture) {
        String str;
        Context context;
        Context context2;
        ESGesturePanel eSGesturePanel;
        Context context3;
        if (gesture != null) {
            if (com.estrongs.android.ui.guesture.b.a(gesture) != null) {
                eSGesturePanel = this.f1693a.c;
                eSGesturePanel.b();
                context3 = this.f1693a.f1692b;
                com.estrongs.android.ui.view.z.a(context3, C0000R.string.gesture_used, 0).show();
                return;
            }
            str = this.f1693a.d;
            if (!com.estrongs.android.ui.guesture.b.a(str, gesture)) {
                context = this.f1693a.f1692b;
                context2 = this.f1693a.f1692b;
                com.estrongs.android.ui.view.z.a(context, context2.getString(C0000R.string.toast_gesture_save_failed), 0).show();
            }
            this.f1693a.b();
        }
    }
}
