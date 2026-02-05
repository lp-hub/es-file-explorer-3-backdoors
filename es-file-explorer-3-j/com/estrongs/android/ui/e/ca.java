package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ca implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.b.m f2027a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f2028b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ca(com.estrongs.fs.b.m mVar, FileExplorerActivity fileExplorerActivity) {
        this.f2027a = mVar;
        this.f2028b = fileExplorerActivity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f2027a.requestStop();
        this.f2028b.runOnUiThread(new cb(this));
    }
}
