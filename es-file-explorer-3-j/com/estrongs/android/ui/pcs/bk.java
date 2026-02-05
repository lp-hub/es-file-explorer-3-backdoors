package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Context;
import com.baidu.sapi2.ErrorCode;
import com.baidu.sapi2.SapiHelper;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bk implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2320a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2321b;
    final /* synthetic */ String c;
    final /* synthetic */ bi d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bk(bi biVar, String str, String str2, String str3) {
        this.d = biVar;
        this.f2320a = str;
        this.f2321b = str2;
        this.c = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        context = this.d.f2317a.c;
        if (FileExplorerActivity.a((Activity) context) != 3) {
            this.d.i.sendMessage(this.d.i.obtainMessage(1, 0, -100, null));
        } else {
            if (SapiHelper.getInstance().regDataCheck(this.d.c, this.f2320a, this.f2321b, this.c)) {
                return;
            }
            this.d.i.sendMessage(this.d.i.obtainMessage(1, 0, ErrorCode.Cheat, null));
        }
    }
}
