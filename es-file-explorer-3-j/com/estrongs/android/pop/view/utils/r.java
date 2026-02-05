package com.estrongs.android.pop.view.utils;

import android.os.Message;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements com.estrongs.android.util.aa {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f1467a;

    /* renamed from: b, reason: collision with root package name */
    private int f1468b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(n nVar) {
        this.f1467a = nVar;
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        this.f1468b++;
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        v vVar = (v) xVar.d;
        Integer num = (Integer) xVar.e;
        if (xVar.g() <= 0 || xVar.a() <= 0 || this.f1468b >= 3) {
            new File(xVar.e()).delete();
        } else {
            xVar.f();
        }
        vVar.o[num.intValue()] = null;
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        Message message = new Message();
        Integer num = (Integer) xVar.e;
        message.arg1 = 123468;
        message.arg2 = num.intValue();
        message.obj = xVar;
        this.f1467a.a(message, 0L);
    }
}
