package com.estrongs.android.ui.view;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w extends com.estrongs.android.pop.app.a.ab {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ v f2653b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(v vVar) {
        this.f2653b = vVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.app.a.ab
    public boolean a(com.estrongs.android.pop.app.a.ad adVar) {
        return adVar.f394b != null && this.f2653b.a(adVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.app.a.ab
    public boolean b(com.estrongs.android.pop.app.a.ad adVar) {
        Handler handler;
        if (!a(adVar)) {
            return false;
        }
        handler = this.f2653b.e;
        handler.post(new x(this, adVar));
        return true;
    }
}
