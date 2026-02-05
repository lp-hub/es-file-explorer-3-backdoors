package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import android.widget.Button;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cg implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cf f1696a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cg(cf cfVar) {
        this.f1696a = cfVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Button button;
        String[] strArr;
        int i2;
        this.f1696a.m = i;
        button = this.f1696a.q;
        strArr = this.f1696a.o;
        i2 = this.f1696a.m;
        button.setText(strArr[i2]);
        dialogInterface.dismiss();
    }
}
