package com.estrongs.android.pop.view;

import android.content.Context;
import android.widget.LinearLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e extends com.estrongs.android.ui.d.b {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1408a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(FileExplorerActivity fileExplorerActivity, LinearLayout linearLayout, Context context) {
        super(linearLayout, context);
        this.f1408a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.ui.d.b
    public void a(int i) {
        this.f1408a.f(i);
    }
}
