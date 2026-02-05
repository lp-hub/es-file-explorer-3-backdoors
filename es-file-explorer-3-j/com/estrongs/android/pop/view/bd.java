package com.estrongs.android.pop.view;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class bd implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ba f1337a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bd(ba baVar) {
        this.f1337a = baVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        boolean z;
        if (this.f1337a.f1333a.G) {
            z = FileExplorerActivity.av;
            if (z) {
                return;
            }
            this.f1337a.f1333a.finish();
        }
    }
}
