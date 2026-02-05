package com.estrongs.android.view;

import android.os.Handler;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bi implements com.estrongs.fs.b.u {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bo f2771a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ar f2772b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(ar arVar, bo boVar) {
        this.f2772b = arVar;
        this.f2771a = boVar;
    }

    @Override // com.estrongs.fs.b.u
    public void a(com.estrongs.fs.b.t tVar, List<com.estrongs.fs.g> list) {
        Handler handler;
        if (tVar.getTaskResult().f229a == 1) {
            return;
        }
        if (this.f2771a.e == null) {
            this.f2771a.e = new ArrayList();
        }
        bj bjVar = new bj(this, tVar, list);
        synchronized (this.f2771a.e) {
            this.f2771a.e.add(bjVar);
        }
        handler = this.f2772b.ac;
        handler.post(bjVar);
    }
}
