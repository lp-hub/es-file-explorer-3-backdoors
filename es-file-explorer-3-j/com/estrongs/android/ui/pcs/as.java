package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.baidu.sapi2.BDAccountManager;
import com.estrongs.android.pop.C0000R;
import java.util.UUID;

/* loaded from: classes.dex */
public class as {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.ui.b.ag f2292a;

    /* renamed from: b, reason: collision with root package name */
    private Context f2293b;
    private x c;
    private com.estrongs.android.pop.q f;
    private int e = 18;
    private String g = null;
    private Handler h = new at(this);
    private aw d = aw.a();

    public as(Context context, x xVar) {
        this.f2293b = context;
        this.f = com.estrongs.android.pop.q.a(this.f2293b);
        this.c = xVar;
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (str == null) {
            this.c.b((String) null);
            return;
        }
        if (this.d != null) {
            this.d.a(2);
            this.d.a(str);
        }
        this.c.b(str);
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.a("SMS_Register", "SMS_Register");
        }
        com.estrongs.android.ui.view.z.a(this.f2293b, C0000R.string.pcs_directly_success, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int c(as asVar) {
        int i = asVar.e;
        asVar.e = i - 1;
        return i;
    }

    private String c() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f2293b.getSystemService(BDAccountManager.KEY_PHONE);
        return new UUID(("" + Settings.Secure.getString(this.f2293b.getContentResolver(), "android_id")).hashCode(), (("" + telephonyManager.getDeviceId()).hashCode() << 32) | ("" + telephonyManager.getSimSerialNumber()).hashCode()).toString();
    }

    private void d() {
        LinearLayout linearLayout = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.f2293b).inflate(C0000R.layout.common_progress_panel, (ViewGroup) null);
        ((TextView) linearLayout.findViewById(C0000R.id.message)).setText(C0000R.string.pcs_directly_loginning);
        this.f2292a = new com.estrongs.android.ui.b.aq(this.f2293b).a(C0000R.string.pcs_login_title).a(linearLayout).a();
        this.f2292a.setOnDismissListener(new au(this));
        this.f2292a.setCanceledOnTouchOutside(false);
        String str = c() + "-" + ("" + System.currentTimeMillis()).substring(0, 10) + "," + this.f2293b.getString(C0000R.string.pcs_smsreg_msgcontent);
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + this.f2293b.getString(C0000R.string.pcs_register_message_address)));
        intent.putExtra("sms_body", str);
        this.f2293b.startActivity(intent);
        new Thread(new av(this, str)).start();
    }

    public void a() {
        this.f2292a.show();
    }

    public void b() {
        this.f2292a.dismiss();
    }
}
