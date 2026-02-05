package com.estrongs.android.view;

import android.app.Activity;
import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f2848a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(n nVar) {
        this.f2848a = nVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Activity activity;
        Activity activity2;
        Activity activity3;
        Activity activity4;
        Activity activity5;
        Activity activity6;
        Activity activity7;
        n.j();
        this.f2848a.b();
        this.f2848a.e();
        activity = this.f2848a.e;
        if (activity instanceof FileExplorerActivity) {
            activity7 = this.f2848a.e;
            ((FileExplorerActivity) activity7).r = false;
        }
        activity2 = this.f2848a.e;
        if (activity2 instanceof FileExplorerActivity) {
            activity3 = this.f2848a.e;
            if ("paste_mode".equals(((FileExplorerActivity) activity3).i.b())) {
                activity4 = this.f2848a.e;
                ((FileExplorerActivity) activity4).i.a("normal_mode", (Boolean) true);
                activity5 = this.f2848a.e;
                ((FileExplorerActivity) activity5).j = "normal_mode";
                activity6 = this.f2848a.e;
                ((FileExplorerActivity) activity6).s = false;
            }
        }
    }
}
