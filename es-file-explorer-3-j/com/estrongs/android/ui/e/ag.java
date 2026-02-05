package com.estrongs.android.ui.e;

import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class ag implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.de[] f1976a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ af f1977b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(af afVar, com.estrongs.android.ui.b.de[] deVarArr) {
        this.f1977b = afVar;
        this.f1976a = deVarArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (com.estrongs.android.pop.app.a.aj.a().d()) {
            return;
        }
        this.f1976a[0] = com.estrongs.android.ui.b.de.a(this.f1977b.f1975a.k, this.f1977b.f1975a.k.getString(C0000R.string.msg_create_playlist), this.f1977b.f1975a.k.getString(C0000R.string.msg_search_songs), true, false);
    }
}
