package com.estrongs.android.ui.c;

import com.estrongs.android.util.aw;
import com.estrongs.fs.b.z;

/* loaded from: classes.dex */
class o implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1909a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f1910b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar, String str) {
        this.f1910b = nVar;
        this.f1909a = str;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (z && aw.b((CharSequence) str2)) {
            new z(com.estrongs.fs.d.a(this.f1910b.f1907a), str2, this.f1909a).execute();
        }
    }
}
