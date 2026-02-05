package com.estrongs.android.ui.drag;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class m implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1959a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ DragWindowView f1960b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(DragWindowView dragWindowView, String str) {
        this.f1960b = dragWindowView;
        this.f1959a = str;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        FileExplorerActivity fileExplorerActivity;
        if (i2 == 4) {
            fileExplorerActivity = this.f1960b.e;
            fileExplorerActivity.runOnUiThread(new n(this));
        }
    }
}
