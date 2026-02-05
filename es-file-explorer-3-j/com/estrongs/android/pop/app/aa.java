package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class aa implements com.estrongs.android.ui.pcs.ag {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f438a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(z zVar) {
        this.f438a = zVar;
    }

    @Override // com.estrongs.android.ui.pcs.ag
    public void a(String str) {
        if (this.f438a.f1093b != null) {
            if (str != null) {
                this.f438a.f1093b.a(true, null, str);
            } else {
                this.f438a.f1093b.a(false, null, null);
            }
        }
    }
}
