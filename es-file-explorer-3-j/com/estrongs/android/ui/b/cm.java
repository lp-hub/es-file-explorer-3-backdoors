package com.estrongs.android.ui.b;

import android.content.Context;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class cm implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cl f1704a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm(cl clVar) {
        this.f1704a = clVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        Context context2;
        context = this.f1704a.f.c;
        context2 = this.f1704a.f.c;
        com.estrongs.android.ui.view.z.a(context, context2.getText(C0000R.string.message_login_fail), 1).show();
        com.estrongs.android.a.t.a();
    }
}
