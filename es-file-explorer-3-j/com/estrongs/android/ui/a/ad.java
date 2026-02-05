package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1492a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(s sVar) {
        this.f1492a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        com.estrongs.android.util.a aVar;
        com.estrongs.android.util.a aVar2;
        fileExplorerActivity = this.f1492a.c;
        fileExplorerActivity.c("app://user");
        aVar = this.f1492a.k;
        if (aVar != null) {
            aVar2 = this.f1492a.k;
            aVar2.a("AppManager_Show", "AppManager_Show");
        }
    }
}
