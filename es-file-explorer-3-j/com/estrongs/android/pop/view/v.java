package com.estrongs.android.pop.view;

import android.view.View;
import android.view.WindowManager;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1481a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(FileExplorerActivity fileExplorerActivity) {
        this.f1481a = fileExplorerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.ui.g.a a2 = com.estrongs.android.ui.g.a.a(view, this.f1481a.getString(C0000R.string.location_history), 0, this.f1481a.q(), false);
        a2.a(new w(this, a2));
        try {
            a2.c();
        } catch (WindowManager.BadTokenException e) {
            e.printStackTrace();
        }
    }
}
