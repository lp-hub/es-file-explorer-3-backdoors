package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.widget.EditText;

/* loaded from: classes.dex */
class h implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f610a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f611b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(f fVar, com.estrongs.android.widget.g gVar) {
        this.f611b = fVar;
        this.f610a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        EditText editText;
        editText = this.f611b.f607a.e;
        editText.setText(this.f610a.d().getAbsolutePath());
        this.f610a.i();
    }
}
