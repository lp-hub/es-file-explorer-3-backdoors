package com.estrongs.android.ui.a;

import android.content.Context;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1600a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f1601b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(o oVar, int i) {
        this.f1601b = oVar;
        this.f1600a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        String item = this.f1601b.getItem(this.f1600a);
        context = this.f1601b.f1596a;
        com.estrongs.android.ui.b.cd cdVar = new com.estrongs.android.ui.b.cd(context, item);
        cdVar.a(new r(this));
        cdVar.a();
    }
}
