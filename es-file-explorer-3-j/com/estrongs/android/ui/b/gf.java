package com.estrongs.android.ui.b;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gf implements com.estrongs.android.util.aa {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ga f1851a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gf(ga gaVar) {
        this.f1851a = gaVar;
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
        com.estrongs.android.util.x xVar;
        com.estrongs.android.util.x xVar2;
        Handler handler;
        Handler handler2;
        xVar = this.f1851a.p;
        xVar.d = Long.valueOf(j);
        xVar2 = this.f1851a.p;
        xVar2.e = Long.valueOf(j2);
        handler = this.f1851a.v;
        Message obtainMessage = handler.obtainMessage(8);
        handler2 = this.f1851a.v;
        handler2.sendMessage(obtainMessage);
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        Handler handler;
        Handler handler2;
        handler = this.f1851a.v;
        Message obtainMessage = handler.obtainMessage(10);
        handler2 = this.f1851a.v;
        handler2.sendMessage(obtainMessage);
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        Handler handler;
        Handler handler2;
        handler = this.f1851a.v;
        Message obtainMessage = handler.obtainMessage(9);
        handler2 = this.f1851a.v;
        handler2.sendMessage(obtainMessage);
    }
}
