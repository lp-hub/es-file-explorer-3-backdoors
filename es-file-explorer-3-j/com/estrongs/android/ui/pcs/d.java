package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.ErrorCode;
import com.baidu.sapi2.SapiHelper;
import com.baidu.sapi2.Utils;
import com.baidu.sapi2.loginshare.Token;
import com.baidu.sapi2.model.LoginResponse;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.PcsThirdPartOAuth;
import java.util.Timer;

/* loaded from: classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    private static String f2357b = "PCSLogin";
    private Handler A;

    /* renamed from: a, reason: collision with root package name */
    private String f2358a;
    private com.estrongs.android.ui.b.ag c;
    private View d;
    private Context e;
    private EditText f;
    private EditText g;
    private EditText h;
    private ImageView i;
    private LinearLayout j;
    private boolean k;
    private boolean l;
    private boolean m;
    private u n;
    private w o;
    private String p;
    private Button q;
    private ImageView r;
    private ImageView s;
    private ImageView t;
    private ProgressBar u;
    private v v;
    private aw w;
    private String x;
    private String y;
    private com.estrongs.android.pop.q z;

    public d(Context context) {
        this(context, null, null);
    }

    public d(Context context, String str, String str2) {
        this.f2358a = null;
        this.i = null;
        this.j = null;
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = null;
        this.o = null;
        this.p = null;
        this.x = null;
        this.y = null;
        this.A = new s(this);
        this.x = str;
        this.y = str2;
        this.e = context;
        this.z = com.estrongs.android.pop.q.a(this.e);
        this.w = aw.a();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity) {
        String obj = this.f.getEditableText().toString();
        String obj2 = this.g.getEditableText().toString();
        String obj3 = this.h.getEditableText().toString();
        String str = this.p;
        if (Utils.isValid(obj) && obj.contains("@") && !Utils.isValidEmail(obj)) {
            this.A.sendMessage(this.A.obtainMessage(1, 1, 1, null));
            return;
        }
        if (this.l) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.n = new u(this, activity, true);
        new Thread(new f(this, obj, obj2, str, obj3)).start();
        a(true, false, 0);
        a(true, true);
        this.q.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, int i, Object obj) {
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
            case ErrorCode.GetCertFail /* -105 */:
                a(z, false);
                a(z, true, C0000R.string.network_fail);
                break;
            case 0:
                LoginResponse loginResponse = (LoginResponse) obj;
                if (loginResponse != null) {
                    String str = loginResponse.mUsername;
                    if (str == null || str.length() == 0) {
                        str = loginResponse.mEmail;
                    }
                    if (str == null || str.length() == 0) {
                        str = loginResponse.mUid;
                    }
                    String a2 = cl.a(this.e, "login:" + com.estrongs.android.util.aw.c(loginResponse.mBduss + "\n" + str));
                    if (this.w != null) {
                        this.w.a(1);
                        this.w.a(a2);
                    }
                    this.f2358a = a2;
                }
                b();
                break;
            case 1:
                a(z, false);
                a(z, true, C0000R.string.username_format_error);
                EditText editText = this.f;
                this.f.setText("");
                editText.requestFocus();
                this.c.requestInputMethod();
                break;
            case 2:
                a(z, false);
                a(z, true, z ? C0000R.string.username_not_exists : C0000R.string.phone_not_exists);
                EditText editText2 = this.f;
                this.f.setText("");
                this.g.setText("");
                editText2.requestFocus();
                this.c.requestInputMethod();
                break;
            case 4:
                a(z, false);
                a(z, true, C0000R.string.msg_wrong_password);
                EditText editText3 = this.g;
                this.g.setText("");
                editText3.requestFocus();
                this.c.requestInputMethod();
                break;
            case 6:
                a(z, false);
                a(z, true, C0000R.string.verifycode_input_error);
                LoginResponse loginResponse2 = (LoginResponse) obj;
                if (loginResponse2 != null) {
                    String str2 = loginResponse2.mVcodeStr;
                    a(z, str2);
                    this.p = str2;
                }
                EditText editText4 = this.h;
                this.h.setText("");
                editText4.requestFocus();
                this.c.requestInputMethod();
                a(z, this.j);
                break;
            case 16:
                a(z, false);
                a(z, true, C0000R.string.cannot_login);
                break;
            case 257:
                LoginResponse loginResponse3 = (LoginResponse) obj;
                a(z, true, C0000R.string.verifycode_hint);
                a(z, false);
                b(z, true);
                if (loginResponse3 != null) {
                    String str3 = loginResponse3.mVcodeStr;
                    a(z, str3);
                    this.p = str3;
                }
                this.h.requestFocus();
                this.c.requestInputMethod();
                break;
            case ErrorCode.NeedActivateEmail /* 110024 */:
                a(z, false);
                a(z, true, C0000R.string.account_not_activate);
                break;
            case ErrorCode.VerifyCodeInputErr /* 110031 */:
                a(z, false);
                a(z, true, C0000R.string.verifycode_input_error);
                EditText editText5 = this.h;
                this.h.setText("");
                editText5.requestFocus();
                this.c.requestInputMethod();
                a(z, this.j);
                break;
            case ErrorCode.PasswordFormatError /* 120013 */:
                a(z, false);
                a(z, true, C0000R.string.msg_wrong_password);
                EditText editText6 = this.g;
                this.g.setText("");
                editText6.requestFocus();
                this.c.requestInputMethod();
                break;
            case ErrorCode.SmsVerifyCodeWrong /* 130003 */:
                b();
                break;
            default:
                a(z, false);
                a(z, true, C0000R.string.unknown_error);
                break;
        }
        this.u.setVisibility(4);
    }

    private void a(boolean z, LinearLayout linearLayout) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, String str) {
        if (this.m) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.o = new w(this, z);
        if (SapiHelper.getInstance().getVerifyImg(this.o, str)) {
            c(z, true);
        }
    }

    private void a(boolean z, boolean z2) {
        this.l = z2;
        if (!z2) {
            this.f.setEnabled(true);
            this.g.setEnabled(true);
            this.h.setEnabled(true);
            this.u.setVisibility(4);
            return;
        }
        this.f.setEnabled(false);
        this.g.setEnabled(false);
        this.h.setEnabled(false);
        this.g.clearFocus();
        this.h.clearFocus();
        this.f.clearFocus();
        this.u.setVisibility(0);
    }

    private void a(boolean z, boolean z2, int i) {
        if (i != 0) {
            com.estrongs.android.ui.view.z.a(this.e, i, 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return str != null && TextUtils.isDigitsOnly(str) && str.length() == 11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Activity activity) {
        String obj = this.f.getEditableText().toString();
        String obj2 = this.g.getEditableText().toString();
        String obj3 = this.h.getEditableText().toString();
        String str = this.p;
        if (Utils.isValid(obj) && obj.contains("@") && !Utils.isValidPhone(obj)) {
            this.A.sendMessage(this.A.obtainMessage(1, 0, 1, null));
            return;
        }
        if (this.l) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.n = new u(this, activity, false);
        new Thread(new g(this, obj, obj2, str, obj3)).start();
        a(false, false, 0);
        a(false, true);
        this.q.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z, int i, Object obj) {
        c(z, false);
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
                a(z, true, C0000R.string.network_fail);
                return;
            case 0:
                if (obj != null) {
                    byte[] bArr = (byte[]) obj;
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                    if (decodeByteArray != null) {
                        this.i.setImageBitmap(decodeByteArray);
                        this.i.setOnClickListener(new t(this, z));
                    }
                    b(z, true);
                    c(z, false);
                    this.h.setText("");
                    this.h.requestFocus();
                    this.j.setVisibility(0);
                    return;
                }
                return;
            default:
                a(z, true, C0000R.string.cannot_login);
                return;
        }
    }

    private void b(boolean z, boolean z2) {
        if (z2) {
            this.j.setVisibility(0);
        } else {
            this.p = null;
            this.j.setVisibility(8);
        }
    }

    private void c(String str, String str2) {
        this.z.f(str, str2);
    }

    private void c(boolean z, boolean z2) {
        this.m = z2;
        if (z2) {
            this.i.setVisibility(4);
        } else {
            this.i.setVisibility(0);
        }
    }

    private void d() {
        this.d = com.estrongs.android.pop.esclasses.e.a(this.e).inflate(C0000R.layout.dialog_pcs_login, (ViewGroup) null);
        this.f = (EditText) this.d.findViewById(C0000R.id.username);
        if (this.x != null) {
            this.f.setText(this.x);
        }
        this.g = (EditText) this.d.findViewById(C0000R.id.password);
        if (this.y != null) {
            this.g.setText(this.y);
        }
        this.h = (EditText) this.d.findViewById(C0000R.id.verifycode);
        this.i = (ImageView) this.d.findViewById(C0000R.id.verifycodeImg);
        this.j = (LinearLayout) this.d.findViewById(C0000R.id.verifycode_layout);
        this.q = (Button) this.d.findViewById(C0000R.id.confirm);
        this.q.setOnClickListener(new e(this));
        this.u = (ProgressBar) this.d.findViewById(C0000R.id.progress);
        this.u.setVisibility(4);
        this.r = (ImageView) this.d.findViewById(C0000R.id.renren);
        this.r.setOnClickListener(new j(this));
        this.s = (ImageView) this.d.findViewById(C0000R.id.weibo);
        this.s.setOnClickListener(new l(this));
        this.t = (ImageView) this.d.findViewById(C0000R.id.qq);
        this.t.setOnClickListener(new n(this));
        ((TextView) this.d.findViewById(C0000R.id.forget)).setOnClickListener(new p(this));
        this.c = new com.estrongs.android.ui.b.aq(this.e).a(C0000R.string.pcs_login_title).a(this.d).a();
        this.c.setOnDismissListener(new q(this));
        this.c.setCanceledOnTouchOutside(false);
        if (this.x != null && this.y != null) {
            this.q.performClick();
            this.g.requestFocus();
            new Timer().schedule(new r(this), 600L);
        }
        if (com.estrongs.android.pop.m.Q) {
            try {
                this.d.findViewById(C0000R.id.third_login_panel).setVisibility(8);
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Intent intent = new Intent(this.e, (Class<?>) PcsThirdPartOAuth.class);
        Bundle bundle = new Bundle();
        bundle.putString("nettype", "pcs");
        bundle.putString("ostype", "renren");
        intent.putExtras(bundle);
        ((Activity) this.e).startActivityForResult(intent, 16781341);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        Intent intent = new Intent(this.e, (Class<?>) PcsThirdPartOAuth.class);
        Bundle bundle = new Bundle();
        bundle.putString("nettype", "pcs");
        bundle.putString("ostype", "sinaweibo");
        intent.putExtras(bundle);
        ((Activity) this.e).startActivityForResult(intent, 16781341);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        Intent intent = new Intent(this.e, (Class<?>) PcsThirdPartOAuth.class);
        Bundle bundle = new Bundle();
        bundle.putString("nettype", "pcs");
        bundle.putString("ostype", "qq");
        intent.putExtras(bundle);
        ((Activity) this.e).startActivityForResult(intent, 16781341);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://wappass.baidu.com/passport/?getpass"));
        try {
            this.e.startActivity(intent);
        } catch (Exception e) {
        }
    }

    public void a() {
        this.w.a(this);
        this.k = true;
        this.c.show();
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.a("Press_Login", "Press_Login");
        }
    }

    public void a(int i, Intent intent, int i2) {
        if (16781341 == i) {
            if (i2 == -1) {
                if (!intent.getBooleanExtra("result", false)) {
                    b();
                    return;
                }
                String stringExtra = intent.getStringExtra("userinfo");
                if (this.w != null) {
                    this.w.a(1);
                    this.w.a(stringExtra);
                }
                this.f2358a = stringExtra;
                b();
                return;
            }
            return;
        }
        if (1000 == i) {
            if (i2 == -1) {
                int intExtra = intent.getIntExtra(BDAccountManager.KEY_RESULTCODE, -100);
                LoginResponse loginResponse = null;
                if (intExtra == 0) {
                    Token token = SapiHelper.getInstance().getToken();
                    if (token != null) {
                        loginResponse = new LoginResponse();
                        loginResponse.mUsername = token.mUsername;
                        loginResponse.mEmail = token.mEmail;
                        loginResponse.mBduss = token.mBduss;
                    }
                    this.n.onEvent(intExtra, loginResponse);
                }
            }
            b();
        }
    }

    public void a(DialogInterface.OnCancelListener onCancelListener) {
        this.c.setOnCancelListener(onCancelListener);
    }

    public void a(v vVar) {
        this.v = vVar;
    }

    public void a(String str, String str2) {
        if (this.f != null) {
            this.f.setText(str);
        }
        if (this.g != null) {
            this.g.setText(str2);
        }
    }

    public void b() {
        this.c.dismiss();
    }

    public void b(String str, String str2) {
        if (str2 == null) {
            if (this.v != null) {
                this.v.a(false, null, null);
                return;
            }
            return;
        }
        c(str, str2);
        this.z.ag();
        if (this.v != null) {
            this.v.a(true, str, str2);
        }
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.b("Normal_Login", "Normal_Login");
        }
        try {
            com.estrongs.android.view.ar t = FileExplorerActivity.E().t();
            com.estrongs.android.pop.q a3 = com.estrongs.android.pop.q.a(this.e);
            String bp = com.estrongs.android.util.ak.bp(a3.e("Market"));
            if (t != null && t.c() != null && com.estrongs.android.util.ak.d(bp, t.c()) && a3.n() && com.estrongs.android.pop.m.I) {
                t.b(true);
            }
        } catch (Exception e) {
        }
    }

    public void c() {
        this.d.findViewById(C0000R.id.third_login_panel).setVisibility(8);
        View findViewById = this.d.findViewById(C0000R.id.pcs_reg_account);
        findViewById.setVisibility(0);
        findViewById.setOnClickListener(new h(this));
    }
}
