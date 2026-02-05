package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import com.baidu.sapi2.ErrorCode;
import com.estrongs.android.pop.C0000R;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bh implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2315a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2316b;
    final /* synthetic */ String c;
    final /* synthetic */ bb d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bh(bb bbVar, String str, String str2, String str3) {
        this.d = bbVar;
        this.f2315a = str;
        this.f2316b = str2;
        this.c = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        Context context7;
        str = this.d.z;
        Map map = (Map) com.estrongs.fs.impl.i.b.a(str, this.f2315a, this.f2316b, this.c);
        if (map == null) {
            this.d.f2308b.j.sendMessage(this.d.f2308b.j.obtainMessage(1, 0, ErrorCode.Network_Failed, null));
            return;
        }
        int parseInt = Integer.parseInt(map.get("result") + "");
        if (parseInt == 0) {
            this.d.f2308b.j.sendMessage(this.d.f2308b.j.obtainMessage(1, 0, 0, null));
            return;
        }
        if (parseInt == 2) {
            Handler handler = this.d.f2308b.j;
            Handler handler2 = this.d.f2308b.j;
            context7 = this.d.c;
            handler.sendMessage(handler2.obtainMessage(1, 0, ErrorCode.Cheat, context7.getString(C0000R.string.verifycode_input_error)));
            return;
        }
        if (parseInt == 3) {
            Handler handler3 = this.d.f2308b.j;
            Handler handler4 = this.d.f2308b.j;
            context6 = this.d.c;
            handler3.sendMessage(handler4.obtainMessage(1, 0, ErrorCode.Cheat, context6.getString(C0000R.string.pcs_normal_error_normaled)));
            return;
        }
        if (parseInt == 4) {
            Handler handler5 = this.d.f2308b.j;
            Handler handler6 = this.d.f2308b.j;
            context5 = this.d.c;
            handler5.sendMessage(handler6.obtainMessage(1, 0, ErrorCode.Cheat, context5.getString(C0000R.string.pcs_smsreg_error_registered)));
            return;
        }
        if (parseInt == 6) {
            Handler handler7 = this.d.f2308b.j;
            Handler handler8 = this.d.f2308b.j;
            context4 = this.d.c;
            handler7.sendMessage(handler8.obtainMessage(1, 0, ErrorCode.Cheat, context4.getString(C0000R.string.msg_wrong_password)));
            return;
        }
        if (parseInt == 7) {
            Handler handler9 = this.d.f2308b.j;
            Handler handler10 = this.d.f2308b.j;
            context3 = this.d.c;
            handler9.sendMessage(handler10.obtainMessage(1, 0, ErrorCode.Cheat, context3.getString(C0000R.string.phone_format_error)));
            return;
        }
        if (parseInt == 500010) {
            Handler handler11 = this.d.f2308b.j;
            Handler handler12 = this.d.f2308b.j;
            context2 = this.d.c;
            handler11.sendMessage(handler12.obtainMessage(1, 0, ErrorCode.Cheat, context2.getString(C0000R.string.pcs_upgrade_err_toomuchcode)));
            return;
        }
        Handler handler13 = this.d.f2308b.j;
        Handler handler14 = this.d.f2308b.j;
        context = this.d.c;
        handler13.sendMessage(handler14.obtainMessage(1, 0, ErrorCode.Cheat, context.getString(C0000R.string.pcs_normal_error_failed)));
    }
}
