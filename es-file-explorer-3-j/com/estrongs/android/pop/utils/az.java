package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class az extends com.estrongs.fs.b.i {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1212a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Activity f1213b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public az(com.estrongs.fs.d dVar, List list, com.estrongs.fs.g gVar, com.estrongs.fs.g gVar2, Activity activity) {
        super(dVar, (List<com.estrongs.fs.g>) list, gVar);
        this.f1212a = gVar2;
        this.f1213b = activity;
    }

    @Override // com.estrongs.fs.b.i, com.estrongs.a.a
    public boolean task() {
        com.estrongs.android.view.ar t;
        boolean task = super.task();
        aj.b(this.f1212a);
        if ((this.f1213b instanceof FileExplorerActivity) && (t = ((FileExplorerActivity) this.f1213b).t()) != null && com.estrongs.android.util.ak.aC(t.c())) {
            this.f1213b.runOnUiThread(new ba(this, t));
        }
        return task;
    }
}
