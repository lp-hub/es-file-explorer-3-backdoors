package com.estrongs.android.pop.app.b;

import android.content.DialogInterface;
import android.widget.Button;

/* loaded from: classes.dex */
class aa implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f473a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(z zVar) {
        this.f473a = zVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        this.f473a.c.f511a = i;
        Button button = this.f473a.f517b;
        String[] strArr = this.f473a.f516a;
        i2 = this.f473a.c.f511a;
        button.setText(strArr[i2]);
        dialogInterface.dismiss();
    }
}
