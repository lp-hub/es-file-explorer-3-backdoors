package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fu implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1833a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fr f1834b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fu(fr frVar, com.estrongs.a.a aVar) {
        this.f1834b = frVar;
        this.f1833a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        DialogInterface.OnClickListener onClickListener;
        if (this.f1833a.canPause()) {
            this.f1833a.requsestPause();
            fr frVar = this.f1834b;
            String string = this.f1834b.getString(C0000R.string.overwrite_resume_title);
            onClickListener = this.f1834b.h;
            frVar.setMiddleButton(string, onClickListener);
        }
    }
}
