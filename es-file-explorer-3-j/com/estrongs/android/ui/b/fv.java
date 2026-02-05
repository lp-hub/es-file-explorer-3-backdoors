package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fv implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1835a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fr f1836b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fv(fr frVar, com.estrongs.a.a aVar) {
        this.f1836b = frVar;
        this.f1835a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        DialogInterface.OnClickListener onClickListener;
        if (this.f1835a.canPause()) {
            this.f1835a.resume();
            fr frVar = this.f1836b;
            String string = this.f1836b.getString(C0000R.string.action_pause);
            onClickListener = this.f1836b.g;
            frVar.setMiddleButton(string, onClickListener);
        }
    }
}
