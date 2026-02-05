package com.estrongs.android.pop.view;

import android.app.Activity;
import android.view.ViewGroup;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bg extends com.estrongs.android.view.bu {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1341a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg(FileExplorerActivity fileExplorerActivity, Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, com.estrongs.android.view.bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.f1341a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.view.bu, com.estrongs.android.view.ar
    public com.estrongs.fs.g j() {
        if (this.x == null || com.estrongs.android.util.ak.aB(this.x.getPath()) || com.estrongs.android.util.ak.at(this.x.getPath()) || com.estrongs.android.util.ak.L(this.x.getPath())) {
            return null;
        }
        return super.j();
    }
}
