package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class am implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2284a;

    private am(ah ahVar) {
        this.f2284a = ahVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ am(ah ahVar, y yVar) {
        this(ahVar);
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        if (this == ah.b(this.f2284a)) {
            ah.a(this.f2284a).sendMessage(ah.a(this.f2284a).obtainMessage(2, 0, i, obj));
        }
    }
}
