package com.estrongs.android.pop.utils;

/* loaded from: classes.dex */
class as implements com.estrongs.android.ui.pcs.ag {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f1201a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(ar arVar) {
        this.f1201a = arVar;
    }

    @Override // com.estrongs.android.ui.pcs.ag
    public void a(String str) {
        if (this.f1201a.f1200b != null) {
            if (str != null) {
                this.f1201a.f1200b.a(true, null, str);
            } else {
                this.f1201a.f1200b.a(false, null, null);
            }
        }
    }
}
