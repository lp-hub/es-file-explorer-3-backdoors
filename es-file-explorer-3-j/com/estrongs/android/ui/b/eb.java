package com.estrongs.android.ui.b;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class eb implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dn f1770a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eb(dn dnVar) {
        this.f1770a = dnVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        try {
            if (this.f1770a.j != null) {
                this.f1770a.j.dismiss();
            }
            FileExplorerActivity E = FileExplorerActivity.E();
            str = this.f1770a.n;
            E.d(com.estrongs.android.util.ak.aY(str));
        } catch (Exception e) {
        }
    }
}
