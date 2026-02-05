package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cd implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f2347a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cd(bt btVar) {
        this.f2347a = btVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        this.f2347a.l();
        context = this.f2347a.f2333b;
        d dVar = new d(context);
        dVar.a(this.f2347a);
        dVar.c();
        dVar.a();
    }
}
