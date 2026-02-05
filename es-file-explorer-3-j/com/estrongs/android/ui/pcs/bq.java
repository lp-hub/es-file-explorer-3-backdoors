package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Context;
import com.baidu.sapi2.ErrorCode;
import com.baidu.sapi2.SapiHelper;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bq implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2328a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2329b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ bo e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bq(bo boVar, String str, String str2, String str3, String str4) {
        this.e = boVar;
        this.f2328a = str;
        this.f2329b = str2;
        this.c = str3;
        this.d = str4;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        br brVar;
        context = this.e.c.c;
        if (FileExplorerActivity.a((Activity) context) != 3) {
            this.e.j.sendMessage(this.e.j.obtainMessage(1, 0, -100, null));
            return;
        }
        SapiHelper sapiHelper = SapiHelper.getInstance();
        brVar = this.e.e;
        if (sapiHelper.phoneReg(brVar, this.f2328a, this.f2329b, this.c, this.d)) {
            return;
        }
        this.e.j.sendMessage(this.e.j.obtainMessage(1, 0, ErrorCode.Cheat, null));
    }
}
