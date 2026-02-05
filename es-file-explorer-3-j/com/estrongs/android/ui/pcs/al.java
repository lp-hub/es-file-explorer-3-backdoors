package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class al implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2283a;

    private al(ah ahVar) {
        this.f2283a = ahVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ al(ah ahVar, y yVar) {
        this(ahVar);
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        if (this == ah.d(this.f2283a)) {
            ah.a(this.f2283a).sendMessage(ah.a(this.f2283a).obtainMessage(3, 0, i, obj));
        }
    }
}
