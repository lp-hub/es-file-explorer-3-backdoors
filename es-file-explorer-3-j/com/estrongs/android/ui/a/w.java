package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1608a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(s sVar) {
        this.f1608a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        fileExplorerActivity = this.f1608a.c;
        fileExplorerActivity.a("video://");
    }
}
