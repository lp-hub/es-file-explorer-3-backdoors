package com.estrongs.android.pop.app.diskusage;

import android.os.Handler;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f680a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f681b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(e eVar, List list) {
        this.f681b = eVar;
        this.f680a = list;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        Handler handler;
        Handler handler2;
        Handler handler3;
        if (i2 == 4 || i2 == 5) {
            handler = this.f681b.aH;
            handler2 = this.f681b.aH;
            handler.sendMessage(handler2.obtainMessage(5, this.f680a));
        } else if (i2 == 2) {
            handler3 = this.f681b.aH;
            handler3.sendEmptyMessage(4);
        }
    }
}
