package com.estrongs.android.ui.theme;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aj implements com.estrongs.android.util.aa {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Handler f2529a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ai f2530b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(ai aiVar, Handler handler) {
        this.f2530b = aiVar;
        this.f2529a = handler;
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        this.f2530b.j = false;
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        this.f2530b.h = false;
        if (this.f2529a != null) {
            Message message = new Message();
            message.what = 13;
            this.f2529a.sendMessage(message);
        }
    }
}
