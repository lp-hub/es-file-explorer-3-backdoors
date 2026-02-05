package com.estrongs.android.a;

import android.content.Context;
import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f254a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(Context context) {
        this.f254a = context;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (this.f254a instanceof FileExplorerActivity) {
        }
    }
}
