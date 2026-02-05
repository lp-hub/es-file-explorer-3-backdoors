package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ah implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1496a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(s sVar) {
        this.f1496a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        com.estrongs.android.util.a aVar;
        com.estrongs.android.util.a aVar2;
        fileExplorerActivity = this.f1496a.c;
        com.estrongs.android.pop.utils.y.a(fileExplorerActivity);
        aVar = this.f1496a.k;
        if (aVar != null) {
            aVar2 = this.f1496a.k;
            aVar2.a("TaskManager_Show", "TaskManager_Show");
        }
    }
}
