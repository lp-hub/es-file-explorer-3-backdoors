package com.estrongs.android.pop.app;

import android.view.View;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class bu implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f543a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bu(bt btVar) {
        this.f543a = btVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        this.f543a.f542b.d(C0000R.string.no_more_comments_msg);
        view = this.f543a.f542b.i;
        view.findViewById(C0000R.id.progress).setVisibility(8);
    }
}
