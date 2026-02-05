package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import com.baidu.sapi2.ErrorCode;
import com.baidu.sapi2.SapiHelper;
import com.baidu.sapi2.Utils;
import com.baidu.sapi2.model.PhoneRegResponse;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
public class bo {

    /* renamed from: a */
    bb f2325a;
    final /* synthetic */ bb c;

    /* renamed from: b */
    boolean f2326b = false;
    private bs d = null;
    private br e = null;
    private boolean f = false;
    private boolean g = false;
    private boolean h = false;
    private int i = 60;
    private Handler j = new bp(this);

    public bo(bb bbVar, bb bbVar2) {
        this.c = bbVar;
        this.f2325a = null;
        this.f2325a = bbVar2;
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
        String a2;
        String a3;
        String a4;
        EditText editText;
        String a5;
        String a6;
        Context context;
        Context context2;
        Context context3;
        Context context4;
        EditText editText2;
        EditText editText3;
        Context context5;
        EditText editText4;
        Context context6;
        Button button;
        ProgressBar progressBar;
        String str = null;
        c(false);
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
            case ErrorCode.GetCertFail /* -105 */:
                a2 = this.c.a(C0000R.string.network_fail);
                a(2, a2);
                break;
            case 0:
                com.estrongs.android.util.a a7 = com.estrongs.android.util.a.a();
                if (a7 != null) {
                    a7.b("PCS_Upgrade_UV", "PCS_Upgrade_UV");
                }
                PhoneRegResponse phoneRegResponse = (PhoneRegResponse) obj;
                if (phoneRegResponse == null) {
                    if (!this.f2326b) {
                        this.c.b();
                        break;
                    } else {
                        aw a8 = aw.a();
                        if (a8 != null) {
                            a8.a(0);
                            a8.a((String) null);
                        }
                        context = this.c.c;
                        com.estrongs.android.pop.q.a(context).f(null, null);
                        context2 = this.c.c;
                        if (context2 instanceof FileExplorerActivity) {
                            context3 = this.c.c;
                            com.estrongs.android.view.ar t = ((FileExplorerActivity) context3).t();
                            if (t != null) {
                                com.estrongs.fs.impl.i.b.l(t.c());
                                t.G();
                                t.a("pcs://");
                                this.c.C = true;
                                this.f2325a.b();
                                context4 = this.c.c;
                                d dVar = new d(context4);
                                editText2 = this.c.i;
                                String obj2 = editText2.getText().toString();
                                editText3 = this.c.m;
                                dVar.a(obj2, editText3.getText().toString());
                                dVar.a();
                                dVar.a(a8.j());
                                context5 = this.c.c;
                                com.estrongs.android.pop.q.a(context5).c();
                                break;
                            }
                        }
                    }
                } else {
                    StringBuilder append = new StringBuilder().append(phoneRegResponse.mBduss).append("\n");
                    editText4 = this.c.i;
                    String str2 = "login:" + com.estrongs.android.util.aw.c(append.append(editText4.getText().toString()).toString());
                    bb bbVar = this.c;
                    context6 = this.c.c;
                    bbVar.B = cl.a(context6, str2);
                    this.c.b();
                    break;
                }
                break;
            case ErrorCode.UsernameFormatErrorRegist /* 110002 */:
                a6 = this.c.a(C0000R.string.username_format_error);
                a(2, a6);
                break;
            case ErrorCode.UsernameExist /* 110003 */:
                a5 = this.c.a(C0000R.string.username_exist);
                a(2, a5);
                break;
            case ErrorCode.SmsVerifyCodeWrong /* 130003 */:
                a4 = this.c.a(C0000R.string.verifycode_input_error2);
                a(2, a4);
                editText = this.c.l;
                editText.requestFocus();
                break;
            case ErrorCode.SmsVerifyCodeExpired /* 130004 */:
                a3 = this.c.a(C0000R.string.smscode_expired);
                a(2, a3);
                break;
            case ErrorCode.PlsGetSmsVerifyCode /* 130022 */:
                b();
                break;
            default:
                if (this.f2326b && (obj instanceof String)) {
                    str = (String) obj;
                }
                if (str == null) {
                    str = this.c.a(C0000R.string.cannot_regist);
                }
                a(2, str);
                break;
        }
        button = this.c.s;
        button.setEnabled(true);
        progressBar = this.c.t;
        progressBar.setVisibility(4);
    }

    public void a(int i, String str) {
        Context context;
        context = this.c.c;
        com.estrongs.android.ui.view.z.a(context, str, 0).show();
        if (i != 1 && i == 2) {
        }
    }

    private void a(boolean z) {
        if (z) {
        }
    }

    private void b() {
        EditText editText;
        editText = this.c.i;
        String obj = editText.getEditableText().toString();
        if (this.g) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.d = new bs(this, null);
        if (SapiHelper.getInstance().getSmsCode(this.d, obj)) {
            b(true);
        }
    }

    public void b(int i, Object obj) {
        String a2;
        String a3;
        Context context;
        ProgressBar progressBar;
        Button button;
        EditText editText;
        EditText editText2;
        b(false);
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
            case ErrorCode.GetCertFail /* -105 */:
                a2 = this.c.a(C0000R.string.network_fail);
                a(2, a2);
                break;
            case 0:
                context = this.c.c;
                a(3, context.getString(C0000R.string.pcs_register_smssent));
                a(60);
                this.h = true;
                break;
            case 257:
                this.c.f2307a.a(obj != null ? obj.toString() : null);
                break;
            case ErrorCode.VerifyCodeInputErr /* 110031 */:
                this.c.f2307a.a(obj != null ? obj.toString() : null);
                break;
            case ErrorCode.SmsCheat /* 130017 */:
                a3 = this.c.a(C0000R.string.smscode_too_much);
                a(2, a3);
                break;
            default:
                if (this.f2326b && (obj instanceof String)) {
                    r0 = (String) obj;
                }
                if (r0 == null) {
                    r0 = this.c.a(C0000R.string.cannot_regist);
                }
                a(2, r0);
                break;
        }
        if (i != 0) {
            progressBar = this.c.k;
            progressBar.setVisibility(4);
            button = this.c.j;
            button.setEnabled(true);
            editText = this.c.i;
            editText.setEnabled(true);
            editText2 = this.c.m;
            editText2.setEnabled(true);
        }
        c();
    }

    private void b(boolean z) {
        EditText editText;
        EditText editText2;
        this.g = z;
        if (this.g) {
            editText2 = this.c.l;
            editText2.setEnabled(false);
            a(true);
        } else {
            editText = this.c.l;
            editText.setEnabled(true);
            a(false);
        }
    }

    private void c() {
        EditText editText;
        editText = this.c.l;
        if (!Utils.isValidSmsCode(editText.getEditableText().toString()) || this.h) {
        }
    }

    private void c(boolean z) {
        EditText editText;
        EditText editText2;
        this.f = z;
        if (this.f) {
            editText2 = this.c.l;
            editText2.setEnabled(false);
            a(true);
        } else {
            editText = this.c.l;
            editText.setEnabled(true);
            a(false);
        }
    }

    public void a() {
        EditText editText;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        editText = this.c.m;
        String obj = editText.getEditableText().toString();
        editText2 = this.c.i;
        String obj2 = editText2.getEditableText().toString();
        editText3 = this.c.l;
        String obj3 = editText3.getEditableText().toString();
        if (this.f) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.e = new br(this, null);
        new Thread(new bq(this, obj2, obj3, null, obj)).start();
        c(true);
        editText4 = this.c.l;
        editText4.clearFocus();
    }
}
