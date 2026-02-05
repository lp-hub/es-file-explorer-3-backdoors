package com.estrongs.android.pop.utils;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1280a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f1281b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(c cVar, FileExplorerActivity fileExplorerActivity) {
        this.f1281b = cVar;
        this.f1280a = fileExplorerActivity;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        if (i2 == 5 || i2 == 4) {
            this.f1280a.runOnUiThread(new v(this));
        }
    }
}
