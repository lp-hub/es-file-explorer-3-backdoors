package com.estrongs.android.ui.b;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bm implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bk f1667a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bm(bk bkVar) {
        this.f1667a = bkVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        try {
            if (this.f1667a.f != null) {
                this.f1667a.f.dismiss();
            }
            FileExplorerActivity E = FileExplorerActivity.E();
            str = this.f1667a.i;
            E.d(str);
        } catch (Exception e) {
        }
    }
}
