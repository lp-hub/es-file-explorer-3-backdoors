package com.estrongs.android.view;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class be extends com.estrongs.android.d.i {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ar f2764b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(ar arVar) {
        this.f2764b = arVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.d.i
    public boolean a(com.estrongs.android.d.k kVar) {
        return kVar.c != null && this.f2764b.a(kVar) && kVar.f286b >= this.f2764b.S && kVar.f286b <= this.f2764b.T;
    }

    @Override // com.estrongs.android.d.i
    public boolean b(com.estrongs.android.d.k kVar) {
        Handler handler;
        if (a(kVar)) {
            handler = this.f2764b.ac;
            handler.post(new bf(this, kVar));
            return true;
        }
        if (!kVar.f285a) {
            return false;
        }
        com.estrongs.android.d.d.a(com.estrongs.android.d.d.f(kVar.d), kVar.e, false);
        return false;
    }
}
