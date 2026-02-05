package com.estrongs.android.ui.h;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.CheckBox;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f2253a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(h hVar) {
        this.f2253a = hVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        CheckBox checkBox;
        c cVar;
        Context context;
        checkBox = this.f2253a.j;
        if (checkBox.isChecked()) {
            cVar = this.f2253a.f2249b;
            context = this.f2253a.f2248a;
            cVar.g(context);
        }
    }
}
