package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2364a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(d dVar) {
        this.f2364a = dVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        context = this.f2364a.e;
        x xVar = new x(context);
        xVar.a(new i(this));
        xVar.a();
        this.f2364a.b();
    }
}
