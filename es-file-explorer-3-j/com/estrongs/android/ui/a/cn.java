package com.estrongs.android.ui.a;

import android.content.Context;
import android.os.Handler;
import android.view.View;

/* loaded from: classes.dex */
class cn implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.theme.ai f1565a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ci f1566b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn(ci ciVar, com.estrongs.android.ui.theme.ai aiVar) {
        this.f1566b = ciVar;
        this.f1565a = aiVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        Handler handler;
        com.estrongs.android.ui.theme.ai aiVar = this.f1565a;
        context = this.f1566b.f1557a;
        handler = this.f1566b.c;
        aiVar.b(context, handler);
    }
}
