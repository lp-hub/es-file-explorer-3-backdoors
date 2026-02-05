package com.estrongs.android.pop.view;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class az implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ at f1330a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(at atVar) {
        this.f1330a = atVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        boolean z;
        if (this.f1330a.f1320a.G) {
            z = FileExplorerActivity.av;
            if (z) {
                return;
            }
            this.f1330a.f1320a.finish();
        }
    }
}
