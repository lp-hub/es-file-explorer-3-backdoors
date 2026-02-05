package com.estrongs.android.pop.view;

import android.view.View;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1425a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(FileExplorerActivity fileExplorerActivity) {
        this.f1425a = fileExplorerActivity;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        com.estrongs.android.ui.view.z.a(this.f1425a, C0000R.string.button_label_up, 0).show();
        return true;
    }
}
