package com.estrongs.android.pop.bt;

import android.util.Log;

/* loaded from: classes.dex */
class b implements k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1100a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f1100a = aVar;
    }

    @Override // com.estrongs.android.pop.bt.k
    public void a() {
        Log.d("OBEXFtpServer", "setProgressDone");
    }

    @Override // com.estrongs.android.pop.bt.k
    public void a(int i) {
        Log.d("OBEXFtpServer", "setProgressMaximum: " + i);
    }

    @Override // com.estrongs.android.pop.bt.k
    public void a(String str) {
        Log.d("OBEXFtpServer", " " + str);
    }

    @Override // com.estrongs.android.pop.bt.k
    public void b(int i) {
        Log.d("OBEXFtpServer", "setProgressValue: " + i);
    }
}
