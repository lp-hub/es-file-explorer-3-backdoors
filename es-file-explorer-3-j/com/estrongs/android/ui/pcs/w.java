package com.estrongs.android.ui.pcs;

import android.os.Handler;
import com.baidu.sapi2.SapiCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2383a;

    /* renamed from: b, reason: collision with root package name */
    private int f2384b;

    public w(d dVar, boolean z) {
        this.f2383a = dVar;
        this.f2384b = 0;
        this.f2384b = z ? 1 : 0;
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        w wVar;
        Handler handler;
        Handler handler2;
        wVar = this.f2383a.o;
        if (this == wVar) {
            handler = this.f2383a.A;
            handler2 = this.f2383a.A;
            handler.sendMessage(handler2.obtainMessage(2, this.f2384b, i, obj));
        }
    }
}
