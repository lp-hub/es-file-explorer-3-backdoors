package com.estrongs.android.pop.app;

import android.widget.MediaController;

/* loaded from: classes.dex */
class hh extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ hg f871a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hh(hg hgVar) {
        this.f871a = hgVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        MediaController mediaController;
        mediaController = this.f871a.f870a.l;
        mediaController.hide();
    }
}
