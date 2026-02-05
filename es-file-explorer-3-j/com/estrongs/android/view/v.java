package com.estrongs.android.view;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class v implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ u f2856a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(u uVar) {
        this.f2856a = uVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2856a.f2855a.e.f();
        FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) this.f2856a.f2855a.ad;
        if (!fileExplorerActivity.C()) {
            fileExplorerActivity.d(C0000R.string.paste_not_allow_msg);
            return;
        }
        if (!this.f2856a.f2855a.f2854b) {
            this.f2856a.f2855a.e();
        }
        this.f2856a.f2855a.a(this.f2856a.f2855a.d);
    }
}
