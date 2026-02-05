package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import com.estrongs.android.pop.FexApplication;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cp implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1382a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cp(FileExplorerActivity fileExplorerActivity) {
        this.f1382a = fileExplorerActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        FexApplication.f326b = false;
        this.f1382a.finish();
    }
}
