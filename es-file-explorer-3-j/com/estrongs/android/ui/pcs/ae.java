package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.ErrorCode;
import com.estrongs.android.pop.C0000R;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ae implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2273a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ x f2274b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(x xVar, String str) {
        this.f2274b = xVar;
        this.f2273a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String str2;
        com.estrongs.android.util.a a2;
        str = this.f2274b.C;
        Map map = (Map) com.estrongs.fs.impl.i.b.d(str, this.f2273a);
        if (map == null) {
            this.f2274b.f2385a.i.sendMessage(this.f2274b.f2385a.i.obtainMessage(3, 0, ErrorCode.Network_Failed, null));
            return;
        }
        int parseInt = Integer.parseInt(map.get("result") + "");
        if (parseInt == 0) {
            this.f2274b.f2385a.i.sendMessage(this.f2274b.f2385a.i.obtainMessage(3, 0, 0, null));
            return;
        }
        if (parseInt == 2) {
            this.f2274b.f2385a.i.sendMessage(this.f2274b.f2385a.i.obtainMessage(3, 0, ErrorCode.BugetBreak, this.f2274b.f.getString(C0000R.string.pcs_normal_error_normaled)));
            return;
        }
        if (parseInt != 4) {
            if (parseInt == 7) {
                this.f2274b.f2385a.i.sendMessage(this.f2274b.f2385a.i.obtainMessage(3, 0, ErrorCode.BugetBreak, this.f2274b.f.getString(C0000R.string.phone_format_error)));
                return;
            } else {
                this.f2274b.f2385a.i.sendMessage(this.f2274b.f2385a.i.obtainMessage(3, 0, ErrorCode.BugetBreak, this.f2274b.f.getString(C0000R.string.pcs_normal_error_failed)));
                return;
            }
        }
        this.f2274b.f2385a.i.sendMessage(this.f2274b.f2385a.i.obtainMessage(3, 0, ErrorCode.BugetBreak, this.f2274b.f.getString(C0000R.string.pcs_smsreg_error_registered)));
        str2 = this.f2274b.C;
        if (str2 == null || (a2 = com.estrongs.android.util.a.a()) == null) {
            return;
        }
        a2.a("PCS_Phone_Registered", "PCS_Phone_Registered");
    }
}
