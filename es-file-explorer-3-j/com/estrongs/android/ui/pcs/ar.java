package com.estrongs.android.ui.pcs;

import android.os.Handler;
import com.baidu.sapi2.SapiCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar implements SapiCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f2291a;

    private ar(an anVar) {
        this.f2291a = anVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ar(an anVar, y yVar) {
        this(anVar);
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        ar arVar;
        Handler handler;
        Handler handler2;
        arVar = this.f2291a.d;
        if (this == arVar) {
            handler = this.f2291a.j;
            handler2 = this.f2291a.j;
            handler.sendMessage(handler2.obtainMessage(2, 0, i, obj));
        }
    }
}
