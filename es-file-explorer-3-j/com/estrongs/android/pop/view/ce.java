package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.widget.CheckBox;
import com.estrongs.android.pop.FexApplication;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ce implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CheckBox f1370a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Thread f1371b;
    final /* synthetic */ FileExplorerActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(FileExplorerActivity fileExplorerActivity, CheckBox checkBox, Thread thread) {
        this.c = fileExplorerActivity;
        this.f1370a = checkBox;
        this.f1371b = thread;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.f1370a.isChecked()) {
            com.estrongs.android.pop.q.a(this.c).q(false);
        }
        dialogInterface.dismiss();
        FexApplication.f326b = true;
        this.f1371b.start();
    }
}
