package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class fs implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f2142a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f2143b;
    final /* synthetic */ EditText c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fs(Context context, com.estrongs.fs.g gVar, EditText editText) {
        this.f2142a = context;
        this.f2143b = gVar;
        this.c = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        fk.b(this.f2142a, this.f2143b, this.c.getText().toString().trim(), false, false);
        dialogInterface.dismiss();
    }
}
