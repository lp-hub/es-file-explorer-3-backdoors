package com.estrongs.android.ui.pcs;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class i implements ag {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f2365a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(h hVar) {
        this.f2365a = hVar;
    }

    @Override // com.estrongs.android.ui.pcs.ag
    public void a(String str) {
        if (str != null) {
            try {
                FileExplorerActivity.E().t().b(true);
            } catch (Exception e) {
            }
        }
    }
}
