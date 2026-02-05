package com.estrongs.android.ui.f;

import android.content.Context;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ak;
import com.estrongs.android.widget.bn;

/* loaded from: classes.dex */
class j implements bn {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.a.a f2211a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f2212b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(g gVar, com.estrongs.android.ui.a.a aVar) {
        this.f2212b = gVar;
        this.f2211a = aVar;
    }

    @Override // com.estrongs.android.widget.bn
    public void a() {
        Context context;
        context = this.f2212b.f2206b.f2204b;
        ((FileExplorerActivity) context).a(ak.A(this.f2211a.b()));
    }
}
