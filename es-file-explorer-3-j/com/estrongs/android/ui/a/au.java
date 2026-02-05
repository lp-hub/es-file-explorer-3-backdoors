package com.estrongs.android.ui.a;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class au implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ at f1509a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(at atVar) {
        this.f1509a = atVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        FileExplorerActivity fileExplorerActivity;
        fileExplorerActivity = this.f1509a.f1508b.f1506a.c;
        com.estrongs.android.ui.view.z.a(fileExplorerActivity, C0000R.string.super_user_error, 1).show();
    }
}
