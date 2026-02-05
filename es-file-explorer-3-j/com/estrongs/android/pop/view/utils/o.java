package com.estrongs.android.pop.view.utils;

import android.os.Message;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o implements com.estrongs.android.util.aa {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f1462a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar) {
        this.f1462a = nVar;
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        File file = new File(((com.estrongs.android.util.x) obj).e());
        if (file.exists()) {
            file.delete();
        }
        Message message = new Message();
        message.arg1 = 123458;
        this.f1462a.a(message, 1000L);
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        int c;
        com.estrongs.android.util.x xVar = (com.estrongs.android.util.x) obj;
        c = this.f1462a.c(xVar.e());
        if (c >= 0) {
            File file = new File(xVar.e());
            File file2 = new File(n.f1460b);
            file2.delete();
            file.renameTo(file2);
        }
        if (c > 0) {
            Message message = new Message();
            message.arg1 = 123457;
            this.f1462a.a(message, 0L);
        } else {
            Message message2 = new Message();
            message2.arg1 = 123458;
            this.f1462a.a(message2, 0L);
        }
    }
}
