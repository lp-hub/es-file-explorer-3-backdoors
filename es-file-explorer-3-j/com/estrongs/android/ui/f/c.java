package com.estrongs.android.ui.f;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.widget.bm;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements bm {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2200a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f2200a = aVar;
    }

    @Override // com.estrongs.android.widget.bm
    public void a() {
        View view;
        view = this.f2200a.f;
        view.setVisibility(4);
        this.f2200a.k = false;
        this.f2200a.p = 0;
        if (FileExplorerActivity.E() != null) {
            FileExplorerActivity.E().e(0);
        }
    }
}
