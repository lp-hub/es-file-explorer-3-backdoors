package com.estrongs.android.ui.pcs;

import android.app.Activity;
import com.baidu.sapi2.ErrorCode;
import com.baidu.sapi2.SapiHelper;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2280a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2281b;
    final /* synthetic */ String c;
    final /* synthetic */ ah d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(ah ahVar, String str, String str2, String str3) {
        this.d = ahVar;
        this.f2280a = str;
        this.f2281b = str2;
        this.c = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (FileExplorerActivity.a((Activity) this.d.f2277a.f) != 3) {
            this.d.i.sendMessage(this.d.i.obtainMessage(1, 0, -100, null));
        } else {
            if (SapiHelper.getInstance().regDataCheck(this.d.c, this.f2280a, this.f2281b, this.c)) {
                return;
            }
            this.d.i.sendMessage(this.d.i.obtainMessage(1, 0, ErrorCode.Cheat, null));
        }
    }
}
