package com.estrongs.android.pop.app.diskusage;

import com.estrongs.android.widget.az;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements com.estrongs.fs.c.b {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f669a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.f669a = eVar;
    }

    @Override // com.estrongs.fs.c.b
    public void a(File file) {
        long j;
        az azVar;
        az azVar2;
        az azVar3;
        long j2;
        long j3;
        long j4;
        long length = file.length();
        j = this.f669a.aF;
        if (length % j != 0) {
            j3 = this.f669a.aF;
            long j5 = (length / j3) + 1;
            j4 = this.f669a.aF;
            length = j5 * j4;
        }
        e.a(this.f669a, length);
        try {
            azVar = this.f669a.ar;
            if (azVar != null) {
                azVar2 = this.f669a.ar;
                azVar2.setMessage(file.getAbsolutePath());
                azVar3 = this.f669a.ar;
                j2 = this.f669a.au;
                azVar3.b(j2);
            }
        } catch (NullPointerException e) {
        }
    }
}
