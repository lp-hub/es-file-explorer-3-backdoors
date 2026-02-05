package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.widget.Button;
import android.widget.EditText;
import com.baidu.sapi2.ErrorCode;
import com.baidu.sapi2.SapiHelper;
import com.baidu.sapi2.Utils;
import com.baidu.sapi2.model.PhoneRegResponse;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
public class an {

    /* renamed from: a */
    x f2285a;
    final /* synthetic */ x c;

    /* renamed from: b */
    boolean f2286b = false;
    private ar d = null;
    private aq e = null;
    private boolean f = false;
    private boolean g = false;
    private boolean h = false;
    private int i = 60;
    private Handler j = new ao(this);

    public an(x xVar, x xVar2) {
        this.c = xVar;
        this.f2285a = null;
        this.f2285a = xVar2;
    }

    public void a(int i) {
        if (i > 0) {
            this.j.removeMessages(3);
            Handler handler = this.j;
            Handler handler2 = this.j;
            int i2 = this.i - 1;
            this.i = i2;
            handler.sendMessageDelayed(handler2.obtainMessage(3, 0, i2), 1000L);
        }
    }

    public void a(int i, Object obj) {
        EditText editText;
        String str;
        c(false);
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
            case ErrorCode.GetCertFail /* -105 */:
                a(2, this.c.a(C0000R.string.network_fail));
                return;
            case 0:
                PhoneRegResponse phoneRegResponse = (PhoneRegResponse) obj;
                if (phoneRegResponse != null) {
                    this.c.d = cl.a(this.c.f, "login:" + com.estrongs.android.util.aw.c(phoneRegResponse.mBduss + "\n" + this.c.l.getText().toString()));
                    this.c.c();
                    return;
                }
                if (!this.f2286b) {
                    this.c.c();
                    return;
                }
                aw a2 = aw.a();
                if (a2 != null) {
                    str = a2.h();
                    a2.a(0);
                    a2.a((String) null);
                } else {
                    str = null;
                }
                com.estrongs.android.pop.q.a(this.c.f).f(null, null);
                com.estrongs.fs.impl.i.b.l(str);
                if (this.c.f instanceof FileExplorerActivity) {
                    this.c.e = true;
                    this.f2285a.c();
                    d dVar = new d(this.c.f);
                    dVar.a(this.c.l.getText().toString(), this.c.p.getText().toString());
                    dVar.a();
                    dVar.a(a2.j());
                    com.estrongs.android.pop.q.a(this.c.f).c();
                    com.estrongs.android.view.ar t = ((FileExplorerActivity) this.c.f).t();
                    if (t != null && com.estrongs.android.util.ak.aq(t.c()) && (t instanceof az)) {
                        t.G();
                        t.a("pcs://");
                        return;
                    }
                    return;
                }
                return;
            case ErrorCode.UsernameFormatErrorRegist /* 110002 */:
                a(2, this.c.a(C0000R.string.username_format_error));
                return;
            case ErrorCode.UsernameExist /* 110003 */:
                a(2, this.c.a(C0000R.string.username_exist));
                return;
            case ErrorCode.SmsVerifyCodeWrong /* 130003 */:
                a(2, this.c.a(C0000R.string.verifycode_input_error2));
                editText = this.c.o;
                editText.requestFocus();
                return;
            case ErrorCode.SmsVerifyCodeExpired /* 130004 */:
                a(2, this.c.a(C0000R.string.smscode_expired));
                return;
            case ErrorCode.PlsGetSmsVerifyCode /* 130022 */:
                b();
                return;
            default:
                String str2 = (this.f2286b && (obj instanceof String)) ? (String) obj : null;
                if (str2 == null) {
                    str2 = this.c.a(C0000R.string.cannot_regist);
                }
                a(2, str2);
                return;
        }
    }

    public void a(int i, String str) {
        com.estrongs.android.ui.view.z.a(this.c.f, str, 0).show();
        if (i != 1 && i == 2) {
        }
    }

    private void a(boolean z) {
        if (z) {
        }
    }

    private void b() {
        String obj = this.c.l.getEditableText().toString();
        if (this.g) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.d = new ar(this, null);
        if (SapiHelper.getInstance().getSmsCode(this.d, obj)) {
            b(true);
        }
    }

    public void b(int i, Object obj) {
        Button button;
        b(false);
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
            case ErrorCode.GetCertFail /* -105 */:
                a(2, this.c.a(C0000R.string.network_fail));
                break;
            case 0:
                a(3, this.c.f.getString(C0000R.string.pcs_register_smssent));
                a(60);
                this.h = true;
                break;
            case 257:
                this.c.f2385a.a(obj != null ? obj.toString() : null);
                break;
            case ErrorCode.VerifyCodeInputErr /* 110031 */:
                this.c.f2385a.a(obj != null ? obj.toString() : null);
                break;
            case ErrorCode.SmsCheat /* 130017 */:
                a(2, this.c.a(C0000R.string.smscode_too_much));
                break;
            default:
                if (this.f2286b && (obj instanceof String)) {
                    r0 = (String) obj;
                }
                if (r0 == null) {
                    r0 = this.c.a(C0000R.string.cannot_regist);
                }
                a(2, r0);
                break;
        }
        if (i != 0) {
            this.c.n.setVisibility(4);
            button = this.c.m;
            button.setEnabled(true);
            this.c.l.setEnabled(true);
            this.c.p.setEnabled(true);
        }
        c();
    }

    private void b(boolean z) {
        EditText editText;
        EditText editText2;
        this.g = z;
        if (this.g) {
            editText2 = this.c.o;
            editText2.setEnabled(false);
            a(true);
        } else {
            editText = this.c.o;
            editText.setEnabled(true);
            a(false);
        }
    }

    private void c() {
        EditText editText;
        editText = this.c.o;
        if (!Utils.isValidSmsCode(editText.getEditableText().toString()) || this.h) {
        }
    }

    private void c(boolean z) {
        EditText editText;
        EditText editText2;
        this.f = z;
        if (this.f) {
            editText2 = this.c.o;
            editText2.setEnabled(false);
            a(true);
        } else {
            editText = this.c.o;
            editText.setEnabled(true);
            a(false);
        }
    }

    public void a() {
        EditText editText;
        EditText editText2;
        String obj = this.c.p.getEditableText().toString();
        String obj2 = this.c.l.getEditableText().toString();
        editText = this.c.o;
        String obj3 = editText.getEditableText().toString();
        if (this.f) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.e = new aq(this, null);
        new Thread(new ap(this, obj2, obj3, null, obj)).start();
        c(true);
        editText2 = this.c.o;
        editText2.clearFocus();
    }
}
