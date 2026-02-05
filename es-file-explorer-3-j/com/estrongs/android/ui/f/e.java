package com.estrongs.android.ui.f;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.widget.bn;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements bn {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2202a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(a aVar) {
        this.f2202a = aVar;
    }

    @Override // com.estrongs.android.widget.bn
    public void a() {
        View view;
        this.f2202a.a();
        view = this.f2202a.g;
        view.requestFocus();
        if (FileExplorerActivity.E() != null) {
            FileExplorerActivity.E().e(4);
        }
    }
}
