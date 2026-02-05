package com.estrongs.android.pop.app.b;

import android.content.DialogInterface;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f479a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ EditText f480b;
    final /* synthetic */ String[] c;
    final /* synthetic */ w d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(w wVar, EditText editText, EditText editText2, String[] strArr) {
        this.d = wVar;
        this.f479a = editText;
        this.f480b = editText2;
        this.c = strArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        try {
            i2 = Integer.parseInt(this.f479a.getText().toString());
        } catch (Exception e) {
            i2 = 0;
        }
        try {
            i5 = Integer.parseInt(this.f480b.getText().toString());
        } catch (Exception e2) {
        }
        w wVar = this.d;
        String[] strArr = this.c;
        i3 = this.d.f512b;
        String str = strArr[i3];
        String[] strArr2 = this.c;
        i4 = this.d.f511a;
        wVar.a(i2, str, i5, strArr2[i4]);
        dialogInterface.dismiss();
    }
}
