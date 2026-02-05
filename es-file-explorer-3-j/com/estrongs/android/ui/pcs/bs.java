package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bs implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bo f2331a;

    private bs(bo boVar) {
        this.f2331a = boVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bs(bo boVar, bc bcVar) {
        this(boVar);
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        if (this == bo.c(this.f2331a)) {
            this.f2331a.j.sendMessage(this.f2331a.j.obtainMessage(2, 0, i, obj));
        }
    }
}
