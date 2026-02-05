package com.estrongs.android.pop.app;

import com.estrongs.android.pop.FexApplication;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class gw extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ gv f858a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gw(gv gvVar) {
        this.f858a = gvVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        com.estrongs.fs.d dVar;
        com.estrongs.fs.d dVar2;
        try {
            ArrayList arrayList = new ArrayList(1);
            dVar = this.f858a.f857b.f854a.j;
            arrayList.add(dVar.j(this.f858a.f856a));
            dVar2 = this.f858a.f857b.f854a.j;
            new com.estrongs.fs.b.o(dVar2, (List<com.estrongs.fs.g>) arrayList, false, com.estrongs.android.pop.q.a(FexApplication.a()).aD()).execute(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
