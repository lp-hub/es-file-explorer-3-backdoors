package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class br implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bo f2330a;

    private br(bo boVar) {
        this.f2330a = boVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ br(bo boVar, bc bcVar) {
        this(boVar);
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        if (this == bo.b(this.f2330a)) {
            bo.a(this.f2330a).sendMessage(bo.a(this.f2330a).obtainMessage(1, 0, i, obj));
        }
    }
}
