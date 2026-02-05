package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ak implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2282a;

    private ak(ah ahVar) {
        this.f2282a = ahVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ak(ah ahVar, y yVar) {
        this(ahVar);
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        if (this == this.f2282a.c) {
            this.f2282a.i.sendMessage(this.f2282a.i.obtainMessage(1, 0, i, obj));
        }
    }
}
