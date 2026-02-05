package com.estrongs.android.pop.view.utils;

import android.os.Message;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q implements com.estrongs.android.util.aa {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f1465a;

    /* renamed from: b, reason: collision with root package name */
    private int f1466b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(n nVar) {
        this.f1465a = nVar;
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        this.f1466b++;
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        if (xVar.g() <= 0 || xVar.a() <= 0 || this.f1466b >= 3) {
            new File(xVar.e()).delete();
        } else {
            xVar.f();
        }
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        Message message = new Message();
        v vVar = (v) xVar.d;
        message.arg1 = 123460;
        message.obj = xVar;
        n.a(vVar);
        if (vVar.k != null) {
            this.f1465a.a(message, 0L);
        }
    }
}
