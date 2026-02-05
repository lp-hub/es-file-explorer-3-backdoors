package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.os.Handler;
import com.baidu.sapi2.callback.LoginCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u extends LoginCallBack {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2381a;

    /* renamed from: b, reason: collision with root package name */
    private int f2382b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(d dVar, Activity activity, boolean z) {
        super(activity);
        this.f2381a = dVar;
        this.f2382b = 0;
        this.f2382b = z ? 1 : 0;
    }

    @Override // com.baidu.sapi2.callback.LoginCallBack, com.baidu.sapi2.SapiCallBack
    public void onEvent(int i, Object obj) {
        u uVar;
        Handler handler;
        Handler handler2;
        uVar = this.f2381a.n;
        if (this == uVar) {
            handler = this.f2381a.A;
            handler2 = this.f2381a.A;
            handler.sendMessage(handler2.obtainMessage(1, this.f2382b, i, obj));
        }
    }
}
