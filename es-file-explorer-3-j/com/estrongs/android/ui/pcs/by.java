package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import com.estrongs.android.pop.C0000R;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class by implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2339a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2340b;
    final /* synthetic */ String c;
    final /* synthetic */ bt d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public by(bt btVar, String str, String str2, String str3) {
        this.d = btVar;
        this.f2339a = str;
        this.f2340b = str2;
        this.c = str3;
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
        Context context6;
        Handler handler15;
        Handler handler16;
        Context context7;
        Handler handler17;
        Handler handler18;
        str = this.d.k;
        Map map = (Map) com.estrongs.fs.impl.i.b.a(str, this.f2339a, this.f2340b, this.c);
        if (map == null) {
            handler = this.d.f2332a.c;
            handler2 = this.d.f2332a.c;
            cj cjVar = this.d.f2332a;
            handler.sendMessage(handler2.obtainMessage(1, 0, 8, null));
            return;
        }
        int parseInt = Integer.parseInt(map.get("result") + "");
        if (parseInt == 0) {
            handler17 = this.d.f2332a.c;
            handler18 = this.d.f2332a.c;
            cj cjVar2 = this.d.f2332a;
            handler17.sendMessage(handler18.obtainMessage(1, 0, 0, null));
            return;
        }
        if (parseInt == 2) {
            handler15 = this.d.f2332a.c;
            handler16 = this.d.f2332a.c;
            cj cjVar3 = this.d.f2332a;
            context7 = this.d.f2333b;
            handler15.sendMessage(handler16.obtainMessage(1, 0, 6, context7.getString(C0000R.string.verifycode_input_error)));
            return;
        }
        if (parseInt == 3) {
            handler13 = this.d.f2332a.c;
            handler14 = this.d.f2332a.c;
            cj cjVar4 = this.d.f2332a;
            context6 = this.d.f2333b;
            handler13.sendMessage(handler14.obtainMessage(1, 0, 1, context6.getString(C0000R.string.pcs_normal_error_normaled)));
            return;
        }
        if (parseInt == 4) {
            handler11 = this.d.f2332a.c;
            handler12 = this.d.f2332a.c;
            cj cjVar5 = this.d.f2332a;
            context5 = this.d.f2333b;
            handler11.sendMessage(handler12.obtainMessage(1, 0, 2, context5.getString(C0000R.string.pcs_smsreg_error_registered)));
            return;
        }
        if (parseInt == 6) {
            handler9 = this.d.f2332a.c;
            handler10 = this.d.f2332a.c;
            cj cjVar6 = this.d.f2332a;
            context4 = this.d.f2333b;
            handler9.sendMessage(handler10.obtainMessage(1, 0, 7, context4.getString(C0000R.string.msg_wrong_password)));
            return;
        }
        if (parseInt == 7) {
            handler7 = this.d.f2332a.c;
            handler8 = this.d.f2332a.c;
            cj cjVar7 = this.d.f2332a;
            context3 = this.d.f2333b;
            handler7.sendMessage(handler8.obtainMessage(1, 0, 3, context3.getString(C0000R.string.phone_format_error)));
            return;
        }
        if (parseInt == 500010) {
            handler5 = this.d.f2332a.c;
            handler6 = this.d.f2332a.c;
            cj cjVar8 = this.d.f2332a;
            context2 = this.d.f2333b;
            handler5.sendMessage(handler6.obtainMessage(1, 0, 4, context2.getString(C0000R.string.pcs_upgrade_err_toomuchcode)));
            return;
        }
        handler3 = this.d.f2332a.c;
        handler4 = this.d.f2332a.c;
        cj cjVar9 = this.d.f2332a;
        context = this.d.f2333b;
        handler3.sendMessage(handler4.obtainMessage(1, 0, 5, context.getString(C0000R.string.pcs_normal_error_failed)));
    }
}
