package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.widget.CheckBox;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cd implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CheckBox f1368a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1369b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cd(FileExplorerActivity fileExplorerActivity, CheckBox checkBox) {
        this.f1369b = fileExplorerActivity;
        this.f1368a = checkBox;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.f1368a.isChecked()) {
            com.estrongs.android.pop.q.a(this.f1369b).s(true);
        }
        dialogInterface.dismiss();
    }
}
