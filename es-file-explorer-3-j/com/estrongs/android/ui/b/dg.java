package com.estrongs.android.ui.b;

import android.view.View;
import com.estrongs.android.pop.esclasses.ESActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dg extends com.estrongs.android.util.n {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1733a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ View f1734b;
    final /* synthetic */ df c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dg(df dfVar, String str, ag agVar, View view) {
        super(str);
        this.c = dfVar;
        this.f1733a = agVar;
        this.f1734b = view;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        ESActivity eSActivity;
        ESActivity eSActivity2;
        com.estrongs.fs.d a2 = com.estrongs.fs.d.a();
        str = this.c.d;
        com.estrongs.fs.g j = a2.j(str);
        if (this.g) {
            eSActivity2 = this.c.f1732b;
            eSActivity2.runOnUiThread(new dh(this));
        } else {
            eSActivity = this.c.f1732b;
            eSActivity.runOnUiThread(new di(this, j));
        }
    }
}
