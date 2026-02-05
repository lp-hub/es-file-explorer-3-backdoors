package com.estrongs.android.pop.app.diskusage;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.view.z;

/* loaded from: classes.dex */
class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f675a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(h hVar) {
        this.f675a = hVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        this.f675a.f672b.ap();
        activity = this.f675a.f672b.ad;
        z.a(activity, C0000R.string.no_permission_for_folder, 1).show();
        this.f675a.f672b.al = 0L;
    }
}
