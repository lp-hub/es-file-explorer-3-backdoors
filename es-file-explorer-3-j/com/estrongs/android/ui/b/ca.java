package com.estrongs.android.ui.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ca implements com.estrongs.android.view.cr {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f1687a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ca(bz bzVar) {
        this.f1687a = bzVar;
    }

    @Override // com.estrongs.android.view.cr
    public void a(Object obj) {
        ag agVar;
        ag agVar2;
        agVar = this.f1687a.f1684a;
        if (agVar == null || !Boolean.TRUE.equals(obj)) {
            return;
        }
        agVar2 = this.f1687a.f1684a;
        agVar2.dismiss();
    }
}
