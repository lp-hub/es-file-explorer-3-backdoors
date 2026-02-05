package com.estrongs.android.view;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class y implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f2860a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x xVar) {
        this.f2860a = xVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) this.f2860a.ad;
            if (fileExplorerActivity.C()) {
                this.f2860a.c();
                if (com.estrongs.android.pop.q.a(this.f2860a.ad).u() && this.f2860a.e.h() == 1) {
                    this.f2860a.e.e();
                }
            } else {
                this.f2860a.e.f();
                fileExplorerActivity.d(C0000R.string.paste_not_allow_msg);
            }
        } catch (IndexOutOfBoundsException e) {
        }
    }
}
