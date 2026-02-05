package com.estrongs.fs.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.utils.AppRunner;

/* loaded from: classes.dex */
class ak implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f2976a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(ai aiVar) {
        this.f2976a = aiVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        AppRunner.a(this.f2976a.f2974a.f, (String) null, this.f2976a.f2974a.c + this.f2976a.f2974a.f2973b);
    }
}
