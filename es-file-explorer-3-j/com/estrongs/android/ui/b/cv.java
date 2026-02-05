package com.estrongs.android.ui.b;

import android.content.Context;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class cv implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cu f1716a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cv(cu cuVar) {
        this.f1716a = cuVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        Context context2;
        context = this.f1716a.f1715b.c;
        context2 = this.f1716a.f1715b.c;
        com.estrongs.android.ui.view.z.a(context, context2.getResources().getString(C0000R.string.smb_file_not_exist), 1).show();
    }
}
