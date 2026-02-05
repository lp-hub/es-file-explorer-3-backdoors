package com.estrongs.android.ui.b;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class gg implements com.estrongs.android.util.aa {
    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        Handler handler = (Handler) xVar.d;
        handler.sendMessage(handler.obtainMessage(6, Boolean.valueOf(xVar.i())));
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        gh ghVar;
        gh b2;
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        String d = xVar.d();
        if (d != null) {
            b2 = ga.b(d);
            ghVar = b2;
        } else {
            ghVar = null;
        }
        Handler handler = (Handler) xVar.d;
        handler.sendMessage(handler.obtainMessage(7, ghVar));
    }
}
