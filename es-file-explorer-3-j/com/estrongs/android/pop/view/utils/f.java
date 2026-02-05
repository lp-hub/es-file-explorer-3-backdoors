package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1445a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Activity activity) {
        this.f1445a = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f1445a, C0000R.string.app_type_error, 1).show();
    }
}
