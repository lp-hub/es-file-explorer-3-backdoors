package com.estrongs.android.pop.view;

import android.view.View;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aa implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1291a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(FileExplorerActivity fileExplorerActivity) {
        this.f1291a = fileExplorerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.ui.g.c a2 = com.estrongs.android.ui.g.c.a(view, this.f1291a.getString(C0000R.string.location_history), 2, this.f1291a.q(), false);
        a2.a(new ab(this, a2));
        a2.c();
    }
}
