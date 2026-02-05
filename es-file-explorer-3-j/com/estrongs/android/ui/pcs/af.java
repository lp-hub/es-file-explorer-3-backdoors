package com.estrongs.android.ui.pcs;

import android.os.Handler;
import com.baidu.sapi2.ErrorCode;
import com.estrongs.android.pop.C0000R;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2275a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2276b;
    final /* synthetic */ String c;
    final /* synthetic */ x d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(x xVar, String str, String str2, String str3) {
        this.d = xVar;
        this.f2275a = str;
        this.f2276b = str2;
        this.c = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        Handler handler5;
        Handler handler6;
        Handler handler7;
        Handler handler8;
        Handler handler9;
        Handler handler10;
        Handler handler11;
        Handler handler12;
        Handler handler13;
        Handler handler14;
        Handler handler15;
        Handler handler16;
        str = this.d.C;
        Map map = (Map) com.estrongs.fs.impl.i.b.a(str, this.f2275a, this.f2276b, this.c);
        if (map == null) {
            handler = this.d.f2386b.j;
            handler2 = this.d.f2386b.j;
            handler.sendMessage(handler2.obtainMessage(1, 0, ErrorCode.Network_Failed, null));
            return;
        }
        int parseInt = Integer.parseInt(map.get("result") + "");
        if (parseInt == 0) {
            handler15 = this.d.f2386b.j;
            handler16 = this.d.f2386b.j;
            handler15.sendMessage(handler16.obtainMessage(1, 0, 0, null));
            return;
        }
        if (parseInt == 2) {
            handler13 = this.d.f2386b.j;
            handler14 = this.d.f2386b.j;
            handler13.sendMessage(handler14.obtainMessage(1, 0, ErrorCode.Cheat, this.d.f.getString(C0000R.string.verifycode_input_error)));
            return;
        }
        if (parseInt == 3) {
            handler11 = this.d.f2386b.j;
            handler12 = this.d.f2386b.j;
            handler11.sendMessage(handler12.obtainMessage(1, 0, ErrorCode.Cheat, this.d.f.getString(C0000R.string.pcs_normal_error_normaled)));
            return;
        }
        if (parseInt == 4) {
            handler9 = this.d.f2386b.j;
            handler10 = this.d.f2386b.j;
            handler9.sendMessage(handler10.obtainMessage(1, 0, ErrorCode.Cheat, this.d.f.getString(C0000R.string.pcs_smsreg_error_registered)));
        } else if (parseInt == 6) {
            handler7 = this.d.f2386b.j;
            handler8 = this.d.f2386b.j;
            handler7.sendMessage(handler8.obtainMessage(1, 0, ErrorCode.Cheat, this.d.f.getString(C0000R.string.msg_wrong_password)));
        } else if (parseInt == 7) {
            handler5 = this.d.f2386b.j;
            handler6 = this.d.f2386b.j;
            handler5.sendMessage(handler6.obtainMessage(1, 0, ErrorCode.Cheat, this.d.f.getString(C0000R.string.phone_format_error)));
        } else {
            handler3 = this.d.f2386b.j;
            handler4 = this.d.f2386b.j;
            handler3.sendMessage(handler4.obtainMessage(1, 0, ErrorCode.Cheat, this.d.f.getString(C0000R.string.pcs_normal_error_failed)));
        }
    }
}
