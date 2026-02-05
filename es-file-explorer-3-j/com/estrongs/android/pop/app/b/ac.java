package com.estrongs.android.pop.app.b;

import android.content.DialogInterface;
import android.widget.Button;

/* loaded from: classes.dex */
class ac implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f476a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(ab abVar) {
        this.f476a = abVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        this.f476a.c.f512b = i;
        Button button = this.f476a.f475b;
        String[] strArr = this.f476a.f474a;
        i2 = this.f476a.c.f512b;
        button.setText(strArr[i2]);
        dialogInterface.dismiss();
    }
}
