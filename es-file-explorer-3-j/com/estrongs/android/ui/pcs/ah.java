package com.estrongs.android.ui.pcs;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.baidu.sapi2.ErrorCode;
import com.baidu.sapi2.SapiHelper;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class ah {

    /* renamed from: a */
    final /* synthetic */ x f2277a;

    /* renamed from: b */
    private am f2278b = null;
    private ak c = null;
    private al d = null;
    private boolean e = false;
    private boolean f = false;
    private boolean g = false;
    private String h = null;
    private Handler i = new ai(this);

    public ah(x xVar) {
        this.f2277a = xVar;
    }

    public void a(int i, Object obj) {
        EditText editText;
        EditText editText2;
        EditText editText3;
        Button button;
        c(false);
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
            case ErrorCode.GetCertFail /* -105 */:
                a(true, C0000R.string.network_fail);
                break;
            case 0:
                a(true, C0000R.string.pcs_register_smssent);
                c(false);
                this.f2277a.e();
                break;
            case 257:
                a(true, C0000R.string.verifycode_hint);
                c(false);
                a(true);
                if (obj != null) {
                    String obj2 = obj.toString();
                    b(obj2);
                    this.h = obj2;
                }
                editText2 = this.f2277a.t;
                editText3 = this.f2277a.t;
                editText3.setText("");
                editText2.requestFocus();
                break;
            case ErrorCode.VerifyCodeInputErr /* 110031 */:
                c(false);
                a(true, C0000R.string.verifycode_input_error);
                if (obj != null) {
                    String obj3 = obj.toString();
                    b(obj3);
                    this.h = obj3;
                }
                editText = this.f2277a.t;
                editText.requestFocus();
                break;
            case ErrorCode.SmsCheat /* 130017 */:
                a(true, C0000R.string.smscode_too_much);
                break;
            default:
                String str = null;
                if (this.f2277a.f2386b.f2286b && (obj instanceof String)) {
                    str = (String) obj;
                }
                if (str == null) {
                    str = this.f2277a.a(C0000R.string.cannot_regist);
                }
                a(true, str);
                break;
        }
        if (i != 0) {
            this.f2277a.n.setVisibility(4);
            button = this.f2277a.m;
            button.setEnabled(true);
            this.f2277a.l.setEnabled(true);
            this.f2277a.p.setEnabled(true);
        }
    }

    private void a(boolean z) {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        if (z) {
            linearLayout2 = this.f2277a.s;
            linearLayout2.setVisibility(0);
        } else {
            this.h = null;
            linearLayout = this.f2277a.s;
            linearLayout.setVisibility(8);
        }
    }

    private void a(boolean z, int i) {
        if (!z || i == 0) {
            return;
        }
        com.estrongs.android.ui.view.z.a(this.f2277a.f, i, 0).show();
    }

    private void a(boolean z, String str) {
        if (!z || str == null) {
            return;
        }
        com.estrongs.android.ui.view.z.a(this.f2277a.f, str, 0).show();
    }

    private void b() {
        EditText editText;
        String obj = this.f2277a.l.getEditableText().toString();
        String str = this.h;
        editText = this.f2277a.t;
        String obj2 = editText.getEditableText().toString();
        if (this.g) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.d = new al(this, null);
        if (SapiHelper.getInstance().getSmsCode(this.d, obj, str == null ? null : str, str != null ? obj2 : null)) {
            return;
        }
        b(false);
    }

    public void b(int i, Object obj) {
        EditText editText;
        Button button;
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
            case ErrorCode.GetCertFail /* -105 */:
                c(false);
                a(true, C0000R.string.network_fail);
                break;
            case 0:
                b();
                break;
            case ErrorCode.WeakPwd /* 110012 */:
                c(false);
                a(true, C0000R.string.weak_password);
                break;
            case ErrorCode.PwdFormatError /* 110013 */:
                c(false);
                a(true, C0000R.string.msg_wrong_password);
                break;
            case ErrorCode.VerifyCodeInputErr /* 110031 */:
                c(false);
                a(true, C0000R.string.verifycode_input_error2);
                editText = this.f2277a.t;
                editText.requestFocus();
                break;
            case ErrorCode.Cheat /* 130001 */:
                c(false);
                a(true, C0000R.string.cheat);
                break;
            case ErrorCode.PhoneFormatErr /* 130019 */:
                a(true, C0000R.string.phone_format_error);
                break;
            case ErrorCode.PhoneNumBinded /* 130020 */:
                a(true, C0000R.string.phone_registed);
                break;
            default:
                c(false);
                a(true, C0000R.string.unknown_error);
                break;
        }
        if (i != 0) {
            this.f2277a.n.setVisibility(4);
            button = this.f2277a.m;
            button.setEnabled(true);
            this.f2277a.l.setEnabled(true);
            this.f2277a.p.setEnabled(true);
        }
    }

    private void b(String str) {
        if (this.f) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.f2278b = new am(this, null);
        if (SapiHelper.getInstance().getVerifyImg(this.f2278b, str)) {
            b(true);
        }
    }

    private void b(boolean z) {
        this.f = z;
        if (z) {
        }
    }

    public void c(int i, Object obj) {
        EditText editText;
        ImageView imageView;
        b(false);
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
                c(false);
                a(true, C0000R.string.network_fail);
                return;
            case 0:
                if (obj != null) {
                    byte[] bArr = (byte[]) obj;
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                    if (decodeByteArray != null) {
                        imageView = this.f2277a.r;
                        imageView.setImageBitmap(decodeByteArray);
                    }
                    a(true);
                    b(false);
                    editText = this.f2277a.t;
                    editText.requestFocus();
                    return;
                }
                return;
            default:
                c(false);
                a(true, C0000R.string.unknown_error);
                return;
        }
    }

    private void c(boolean z) {
        this.e = z;
        if (z) {
            d(true);
        } else {
            d(false);
        }
    }

    private void d(boolean z) {
        if (z) {
        }
    }

    public void a() {
        EditText editText;
        String obj = this.f2277a.p.getEditableText().toString();
        String obj2 = this.f2277a.l.getEditableText().toString();
        editText = this.f2277a.t;
        editText.getEditableText().toString();
        String str = this.h;
        if (this.e) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.c = new ak(this, null);
        new Thread(new aj(this, obj2, str, obj)).start();
        a(false, 0);
        c(true);
        d(true);
    }

    public void a(String str) {
        this.h = str;
        a(true);
        a(true, C0000R.string.verifycode_hint);
        b(this.h);
    }
}
