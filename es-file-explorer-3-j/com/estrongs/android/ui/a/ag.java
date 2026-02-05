package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1495a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(s sVar) {
        this.f1495a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        fileExplorerActivity = this.f1495a.c;
        fileExplorerActivity.c("download://");
    }
}
