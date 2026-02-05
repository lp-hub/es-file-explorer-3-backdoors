package com.estrongs.android.pop.app.compress;

import android.content.Context;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f631a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x xVar) {
        this.f631a = xVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        Context context2;
        context = this.f631a.f.c;
        context2 = this.f631a.f.c;
        com.estrongs.android.ui.view.z.a(context, context2.getResources().getString(C0000R.string.msg_wrong_password), 1).show();
    }
}
