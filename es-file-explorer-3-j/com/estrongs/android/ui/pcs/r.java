package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import java.util.TimerTask;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2377a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(d dVar) {
        this.f2377a = dVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        Context context;
        EditText editText;
        context = this.f2377a.e;
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        editText = this.f2377a.g;
        inputMethodManager.showSoftInput(editText, 1);
    }
}
