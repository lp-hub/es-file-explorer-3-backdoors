package com.estrongs.android.pop.view;

import android.content.Context;

/* loaded from: classes.dex */
class di implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dh f1403a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public di(dh dhVar) {
        this.f1403a = dhVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1403a.f1402a.f1401a.b((Context) this.f1403a.f1402a.f1401a);
    }
}
