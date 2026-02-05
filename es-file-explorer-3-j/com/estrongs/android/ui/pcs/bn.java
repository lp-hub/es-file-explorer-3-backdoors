package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiCallBack;

/* loaded from: classes.dex */
class bn implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bi f2324a;

    private bn(bi biVar) {
        this.f2324a = biVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bn(bi biVar, bc bcVar) {
        this(biVar);
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        if (this == this.f2324a.f2318b) {
            this.f2324a.i.sendMessage(this.f2324a.i.obtainMessage(2, 0, i, obj));
        }
    }
}
