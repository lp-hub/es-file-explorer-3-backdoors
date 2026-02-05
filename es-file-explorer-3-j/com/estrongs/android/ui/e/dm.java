package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.widget.CheckBox;
import java.util.List;

/* loaded from: classes.dex */
class dm implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f2071a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ CheckBox f2072b;
    final /* synthetic */ dl c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dm(dl dlVar, List list, CheckBox checkBox) {
        this.c = dlVar;
        this.f2071a = list;
        this.f2072b = checkBox;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.c.f2070a.a((List<com.estrongs.fs.g>) this.f2071a, this.f2072b.isChecked());
    }
}
