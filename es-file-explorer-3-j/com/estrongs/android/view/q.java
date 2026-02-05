package com.estrongs.android.view;

import android.app.Activity;
import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f2849a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(n nVar) {
        this.f2849a = nVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Activity activity;
        Activity activity2;
        this.f2849a.e();
        activity = this.f2849a.e;
        if (activity instanceof FileExplorerActivity) {
            activity2 = this.f2849a.e;
            ((FileExplorerActivity) activity2).r = false;
        }
    }
}
