package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bw implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f2336a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(bt btVar) {
        this.f2336a = btVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        String str;
        String d;
        context = this.f2336a.f2333b;
        str = this.f2336a.l;
        d = this.f2336a.d();
        d dVar = new d(context, str, d);
        dVar.a(this.f2336a);
        dVar.c();
        dVar.a();
    }
}
