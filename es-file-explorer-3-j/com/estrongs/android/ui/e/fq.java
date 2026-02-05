package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class fq implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f2140a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f2141b;
    final /* synthetic */ String c;
    final /* synthetic */ EditText d;
    final /* synthetic */ DialogInterface.OnDismissListener e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fq(Context context, com.estrongs.fs.g gVar, String str, EditText editText, DialogInterface.OnDismissListener onDismissListener) {
        this.f2140a = context;
        this.f2141b = gVar;
        this.c = str;
        this.d = editText;
        this.e = onDismissListener;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        fk.b(this.f2140a, this.f2141b, this.c, this.d.getText().toString().trim(), this.e);
        dialogInterface.dismiss();
    }
}
