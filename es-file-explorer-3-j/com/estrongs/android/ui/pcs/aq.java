package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aq implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f2290a;

    private aq(an anVar) {
        this.f2290a = anVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ aq(an anVar, y yVar) {
        this(anVar);
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        if (this == an.b(this.f2290a)) {
            an.a(this.f2290a).sendMessage(an.a(this.f2290a).obtainMessage(1, 0, i, obj));
        }
    }
}
