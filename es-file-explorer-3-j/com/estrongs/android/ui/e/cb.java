package com.estrongs.android.ui.e;

import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class cb implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ca f2029a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cb(ca caVar) {
        this.f2029a = caVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.view.z.a(this.f2029a.f2028b, this.f2029a.f2028b.getString(C0000R.string.msg_playlist_cancelled), 0).show();
    }
}
