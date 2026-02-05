package com.estrongs.android.ui.e;

import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class dx implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f2084a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dw f2085b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dx(dw dwVar, com.estrongs.a.a aVar) {
        this.f2085b = dwVar;
        this.f2084a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2084a.getTaskResult().f229a == 0) {
            com.estrongs.android.pop.utils.a.a(this.f2085b.f2083a.f2082b.f2079a.f1968b, C0000R.string.edit_succ);
        } else {
            com.estrongs.android.pop.utils.a.a(this.f2085b.f2083a.f2082b.f2079a.f1968b, C0000R.string.edit_failed);
        }
    }
}
