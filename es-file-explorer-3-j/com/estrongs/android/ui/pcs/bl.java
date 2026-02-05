package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bl implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bi f2322a;

    private bl(bi biVar) {
        this.f2322a = biVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bl(bi biVar, bc bcVar) {
        this(biVar);
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        if (this == this.f2322a.c) {
            this.f2322a.i.sendMessage(this.f2322a.i.obtainMessage(1, 0, i, obj));
        }
    }
}
