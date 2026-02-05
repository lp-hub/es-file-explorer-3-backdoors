package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.utils.AppRunner;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class il implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f908a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.ag f909b;
    final /* synthetic */ ShowDialogActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public il(ShowDialogActivity showDialogActivity, String str, com.estrongs.android.ui.b.ag agVar) {
        this.c = showDialogActivity;
        this.f908a = str;
        this.f909b = agVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (AppRunner.q(this.c, this.f908a) != null) {
            AppRunner.a(this.c, this.f908a, this.f908a);
            dialogInterface.dismiss();
        } else {
            this.f909b.setOnDismissListener(null);
            this.f909b.dismiss();
            AppRunner.s(this.c, this.f908a).setOnDismissListener(new im(this));
        }
    }
}
