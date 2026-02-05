package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.baidu.sapi2.SapiHelper;
import com.baidu.sapi2.Utils;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2362a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2363b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ d e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(d dVar, String str, String str2, String str3, String str4) {
        this.e = dVar;
        this.f2362a = str;
        this.f2363b = str2;
        this.c = str3;
        this.d = str4;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        Handler handler;
        Handler handler2;
        u uVar;
        Handler handler3;
        Handler handler4;
        context = this.e.e;
        if (FileExplorerActivity.a((Activity) context) != 3) {
            handler = this.e.A;
            handler2 = this.e.A;
            handler.sendMessage(handler2.obtainMessage(1, 0, -100, null));
            return;
        }
        SapiHelper sapiHelper = SapiHelper.getInstance();
        uVar = this.e.n;
        if (sapiHelper.login(uVar, true, this.f2362a, this.f2363b, !Utils.isValid(this.c) ? null : this.c, !Utils.isValid(this.c) ? null : this.d, false)) {
            return;
        }
        handler3 = this.e.A;
        handler4 = this.e.A;
        handler3.sendMessage(handler4.obtainMessage(1, 0, 16, null));
    }
}
