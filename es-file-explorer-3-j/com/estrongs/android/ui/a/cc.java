package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cc implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1548a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ s f1549b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(s sVar, String str) {
        this.f1549b = sVar;
        this.f1548a = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        fileExplorerActivity = this.f1549b.c;
        fileExplorerActivity.a(this.f1548a);
    }
}
