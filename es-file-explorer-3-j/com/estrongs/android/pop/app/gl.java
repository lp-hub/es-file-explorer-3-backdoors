package com.estrongs.android.pop.app;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gl implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopRemoteImageBrowser f846a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gl(PopRemoteImageBrowser popRemoteImageBrowser) {
        this.f846a = popRemoteImageBrowser;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f846a.d();
        gn.a();
    }
}
