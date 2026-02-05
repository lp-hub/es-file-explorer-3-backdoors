package com.estrongs.android.view;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ax implements com.estrongs.a.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f2755a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(ar arVar) {
        this.f2755a = arVar;
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        Handler handler;
        handler = this.f2755a.ac;
        handler.post(new ay(this, iVar));
    }
}
