package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import com.baidu.sapi2.ErrorCode;
import com.estrongs.android.pop.C0000R;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2313a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bb f2314b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(bb bbVar, String str) {
        this.f2314b = bbVar;
        this.f2313a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        Context context;
        Context context2;
        Context context3;
        Context context4;
        boolean z;
        com.estrongs.android.util.a a2;
        Context context5;
        str = this.f2314b.z;
        Map map = (Map) com.estrongs.fs.impl.i.b.d(str, this.f2313a);
        if (map == null) {
            this.f2314b.f2307a.i.sendMessage(this.f2314b.f2307a.i.obtainMessage(3, 0, ErrorCode.Network_Failed, null));
            return;
        }
        int parseInt = Integer.parseInt(map.get("result") + "");
        if (parseInt == 0) {
            this.f2314b.f2307a.i.sendMessage(this.f2314b.f2307a.i.obtainMessage(3, 0, 0, null));
            return;
        }
        if (parseInt == 2) {
            Handler handler = this.f2314b.f2307a.i;
            Handler handler2 = this.f2314b.f2307a.i;
            context5 = this.f2314b.c;
            handler.sendMessage(handler2.obtainMessage(3, 0, ErrorCode.BugetBreak, context5.getString(C0000R.string.pcs_normal_error_normaled)));
            return;
        }
        if (parseInt == 4) {
            Handler handler3 = this.f2314b.f2307a.i;
            Handler handler4 = this.f2314b.f2307a.i;
            context4 = this.f2314b.c;
            handler3.sendMessage(handler4.obtainMessage(3, 0, ErrorCode.BugetBreak, context4.getString(C0000R.string.pcs_smsreg_error_registered)));
            z = this.f2314b.D;
            if (!z || (a2 = com.estrongs.android.util.a.a()) == null) {
                return;
            }
            a2.a("PCS_Phone_Registered", "PCS_Phone_Registered");
            return;
        }
        if (parseInt == 7) {
            Handler handler5 = this.f2314b.f2307a.i;
            Handler handler6 = this.f2314b.f2307a.i;
            context3 = this.f2314b.c;
            handler5.sendMessage(handler6.obtainMessage(3, 0, ErrorCode.BugetBreak, context3.getString(C0000R.string.phone_format_error)));
            return;
        }
        if (parseInt == 500010) {
            Handler handler7 = this.f2314b.f2307a.i;
            Handler handler8 = this.f2314b.f2307a.i;
            context2 = this.f2314b.c;
            handler7.sendMessage(handler8.obtainMessage(3, 0, ErrorCode.BugetBreak, context2.getString(C0000R.string.pcs_upgrade_err_toomuchcode)));
            return;
        }
        Handler handler9 = this.f2314b.f2307a.i;
        Handler handler10 = this.f2314b.f2307a.i;
        context = this.f2314b.c;
        handler9.sendMessage(handler10.obtainMessage(3, 0, ErrorCode.BugetBreak, context.getString(C0000R.string.pcs_normal_error_failed)));
    }
}
