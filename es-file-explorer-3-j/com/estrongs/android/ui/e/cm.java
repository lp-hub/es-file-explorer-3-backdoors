package com.estrongs.android.ui.e;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class cm implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f2040a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.de f2041b;
    final /* synthetic */ com.estrongs.fs.b.m c;
    final /* synthetic */ boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm(FileExplorerActivity fileExplorerActivity, com.estrongs.android.ui.b.de deVar, com.estrongs.fs.b.m mVar, boolean z) {
        this.f2040a = fileExplorerActivity;
        this.f2041b = deVar;
        this.c = mVar;
        this.d = z;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        if (i2 == 4) {
            this.f2040a.runOnUiThread(new cn(this));
        }
    }
}
