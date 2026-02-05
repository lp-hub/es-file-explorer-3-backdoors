package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import com.estrongs.android.pop.C0000R;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bx implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2337a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bt f2338b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bx(bt btVar, String str) {
        this.f2338b = btVar;
        this.f2337a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        Context context;
        Handler handler5;
        Handler handler6;
        Context context2;
        Handler handler7;
        Handler handler8;
        Context context3;
        Handler handler9;
        Handler handler10;
        Context context4;
        Handler handler11;
        Handler handler12;
        Context context5;
        Handler handler13;
        Handler handler14;
        str = this.f2338b.k;
        Map map = (Map) com.estrongs.fs.impl.i.b.d(str, this.f2337a);
        if (map == null) {
            handler = this.f2338b.f2332a.c;
            handler2 = this.f2338b.f2332a.c;
            cj cjVar = this.f2338b.f2332a;
            handler.sendMessage(handler2.obtainMessage(2, 0, 8, null));
            return;
        }
        int parseInt = Integer.parseInt(map.get("result") + "");
        if (parseInt == 0) {
            handler13 = this.f2338b.f2332a.c;
            handler14 = this.f2338b.f2332a.c;
            cj cjVar2 = this.f2338b.f2332a;
            handler13.sendMessage(handler14.obtainMessage(2, 0, 0, null));
            return;
        }
        if (parseInt == 2) {
            handler11 = this.f2338b.f2332a.c;
            handler12 = this.f2338b.f2332a.c;
            cj cjVar3 = this.f2338b.f2332a;
            context5 = this.f2338b.f2333b;
            handler11.sendMessage(handler12.obtainMessage(2, 0, 1, context5.getString(C0000R.string.pcs_normal_error_normaled)));
            return;
        }
        if (parseInt == 4) {
            handler9 = this.f2338b.f2332a.c;
            handler10 = this.f2338b.f2332a.c;
            cj cjVar4 = this.f2338b.f2332a;
            context4 = this.f2338b.f2333b;
            handler9.sendMessage(handler10.obtainMessage(2, 0, 2, context4.getString(C0000R.string.pcs_smsreg_error_registered)));
            com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
            if (a2 != null) {
                a2.a("PCS_Phone_Registered", "PCS_Phone_Registered");
                return;
            }
            return;
        }
        if (parseInt == 7) {
            handler7 = this.f2338b.f2332a.c;
            handler8 = this.f2338b.f2332a.c;
            cj cjVar5 = this.f2338b.f2332a;
            context3 = this.f2338b.f2333b;
            handler7.sendMessage(handler8.obtainMessage(2, 0, 3, context3.getString(C0000R.string.phone_format_error)));
            return;
        }
        if (parseInt == 500010) {
            handler5 = this.f2338b.f2332a.c;
            handler6 = this.f2338b.f2332a.c;
            cj cjVar6 = this.f2338b.f2332a;
            context2 = this.f2338b.f2333b;
            handler5.sendMessage(handler6.obtainMessage(2, 0, 4, context2.getString(C0000R.string.pcs_upgrade_err_toomuchcode)));
            return;
        }
        handler3 = this.f2338b.f2332a.c;
        handler4 = this.f2338b.f2332a.c;
        cj cjVar7 = this.f2338b.f2332a;
        context = this.f2338b.f2333b;
        handler3.sendMessage(handler4.obtainMessage(2, 0, 5, context.getString(C0000R.string.pcs_normal_error_failed)));
    }
}
