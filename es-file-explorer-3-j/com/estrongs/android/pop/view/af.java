package com.estrongs.android.pop.view;

import android.view.View;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1299a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(FileExplorerActivity fileExplorerActivity) {
        this.f1299a = fileExplorerActivity;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        com.estrongs.android.ui.view.z.a(this.f1299a, C0000R.string.action_close, 0).show();
        return true;
    }
}
