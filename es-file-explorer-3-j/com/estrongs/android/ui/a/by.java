package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class by implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1543a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public by(s sVar) {
        this.f1543a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        com.estrongs.android.pop.q qVar;
        fileExplorerActivity = this.f1543a.c;
        qVar = this.f1543a.e;
        fileExplorerActivity.a(qVar.e("Market"));
    }
}
