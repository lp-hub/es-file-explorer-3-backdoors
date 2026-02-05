package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.content.DialogInterface;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.util.ax;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1458a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1459b;
    final /* synthetic */ Activity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(ag agVar, String str, Activity activity) {
        this.f1458a = agVar;
        this.f1459b = str;
        this.c = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1458a.dismiss();
        ax.c().a(this.f1459b, false);
        if (i == 0) {
            AppRunner.a(this.c, this.f1459b, false, true);
            return;
        }
        if (i == 1) {
            AppRunner.a(this.c, this.f1459b, 0, true);
            return;
        }
        if (i == 2) {
            AppRunner.b(this.c, this.f1459b, 0, true);
        } else if (i == 3) {
            AppRunner.a(this.c, this.f1459b, this.f1459b, true);
        } else if (i == 4) {
            AppRunner.c(this.c, this.f1459b, 0, true);
        }
    }
}
