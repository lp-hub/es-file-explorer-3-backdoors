package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bm implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bi f2323a;

    private bm(bi biVar) {
        this.f2323a = biVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bm(bi biVar, bc bcVar) {
        this(biVar);
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        if (this == bi.d(this.f2323a)) {
            bi.a(this.f2323a).sendMessage(bi.a(this.f2323a).obtainMessage(3, 0, i, obj));
        }
    }
}
