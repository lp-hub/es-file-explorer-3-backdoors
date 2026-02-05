package com.estrongs.android.pop.utils;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class f implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1255a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f1256b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(c cVar, FileExplorerActivity fileExplorerActivity) {
        this.f1256b = cVar;
        this.f1255a = fileExplorerActivity;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        if (i2 == 5) {
            this.f1255a.runOnUiThread(new g(this));
        } else if (i2 == 4) {
            this.f1255a.runOnUiThread(new h(this));
        }
    }
}
