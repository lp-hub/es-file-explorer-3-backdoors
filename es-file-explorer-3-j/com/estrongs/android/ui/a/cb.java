package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cb implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1547a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cb(s sVar) {
        this.f1547a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        fileExplorerActivity = this.f1547a.c;
        fileExplorerActivity2 = this.f1547a.c;
        fileExplorerActivity.a(com.estrongs.android.pop.q.a(fileExplorerActivity2).C());
    }
}
