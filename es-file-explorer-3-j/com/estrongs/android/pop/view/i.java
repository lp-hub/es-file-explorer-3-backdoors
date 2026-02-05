package com.estrongs.android.pop.view;

import android.content.Context;
import com.estrongs.android.widget.ContentViewSwitcher;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i extends ContentViewSwitcher {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1414a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(FileExplorerActivity fileExplorerActivity, Context context) {
        super(context);
        this.f1414a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.widget.ContentViewSwitcher, com.estrongs.android.widget.RealViewSwitcher
    public void a(int i) {
        if (this.f1414a.q) {
            this.f1414a.f(false);
        }
        super.a(i);
    }
}
