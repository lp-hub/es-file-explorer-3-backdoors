package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1493a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ s f1494b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(s sVar, String str) {
        this.f1494b = sVar;
        this.f1493a = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        fileExplorerActivity = this.f1494b.c;
        fileExplorerActivity.d(this.f1493a);
    }
}
