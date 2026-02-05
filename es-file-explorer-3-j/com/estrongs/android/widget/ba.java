package com.estrongs.android.widget;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ba extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ az f2903a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(az azVar) {
        this.f2903a = azVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        bd bdVar;
        bd bdVar2;
        super.handleMessage(message);
        az.a(this.f2903a);
        if (1 == message.what) {
            this.f2903a.c.setText(this.f2903a.j);
            return;
        }
        if (3 == message.what) {
            bdVar2 = this.f2903a.n;
            bdVar2.a(this.f2903a.f2902b, this.f2903a.g, this.f2903a.h);
        } else if (2 == message.what) {
            bdVar = this.f2903a.n;
            bdVar.b(this.f2903a.f2902b, this.f2903a.d, this.f2903a.i);
            this.f2903a.e.setText(this.f2903a.f.format(this.f2903a.i / this.f2903a.h));
        }
    }
}
