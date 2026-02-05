package com.estrongs.android.pop.view;

import android.view.View;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1426a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(FileExplorerActivity fileExplorerActivity) {
        this.f1426a = fileExplorerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        if (FileExplorerActivity.v) {
            z = this.f1426a.au;
            if (!z) {
                View findViewById = this.f1426a.findViewById(C0000R.id.left);
                if (findViewById.getVisibility() == 8) {
                    findViewById.setVisibility(0);
                    return;
                } else {
                    findViewById.setVisibility(8);
                    return;
                }
            }
        }
        this.f1426a.showNaviPage1(view);
    }
}
