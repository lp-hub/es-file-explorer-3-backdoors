package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.os.Handler;
import com.baidu.sapi2.ErrorCode;
import com.baidu.sapi2.SapiHelper;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ap implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2288a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2289b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ an e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(an anVar, String str, String str2, String str3, String str4) {
        this.e = anVar;
        this.f2288a = str;
        this.f2289b = str2;
        this.c = str3;
        this.d = str4;
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler handler;
        Handler handler2;
        aq aqVar;
        Handler handler3;
        Handler handler4;
        if (FileExplorerActivity.a((Activity) this.e.c.f) != 3) {
            handler = this.e.j;
            handler2 = this.e.j;
            handler.sendMessage(handler2.obtainMessage(1, 0, -100, null));
            return;
        }
        SapiHelper sapiHelper = SapiHelper.getInstance();
        aqVar = this.e.e;
        if (sapiHelper.phoneReg(aqVar, this.f2288a, this.f2289b, this.c, this.d)) {
            return;
        }
        handler3 = this.e.j;
        handler4 = this.e.j;
        handler3.sendMessage(handler4.obtainMessage(1, 0, ErrorCode.Cheat, null));
    }
}
